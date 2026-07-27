# LaTeX-ify PowerShell script — Batch convert Unicode scientific notation to LaTeX
# Usage: .\latexify.ps1 -TargetDir "path/to/research"
# Reviews all .md files and replaces common Unicode scientific patterns with LaTeX

param(
    [string]$TargetDir = "."
)

$files = Get-ChildItem -Path $TargetDir -Recurse -Filter "*.md"

# ============================================================
# REPLACEMENT MAP — Phase 1: Ions & Chemical Formulas
# ============================================================
$phase1 = [ordered]@{
    # Ions
    'Er³⁺' = '$\mathrm{Er}^{3+}$'
    'Yb³⁺' = '$\mathrm{Yb}^{3+}$'
    'Nd³⁺' = '$\mathrm{Nd}^{3+}$'
    'Tm³⁺' = '$\mathrm{Tm}^{3+}$'
    'Ho³⁺' = '$\mathrm{Ho}^{3+}$'
    'Ce³⁺' = '$\mathrm{Ce}^{3+}$'
    'Eu³⁺' = '$\mathrm{Eu}^{3+}$'
    'Sm³⁺' = '$\mathrm{Sm}^{3+}$'
    'Al³⁺' = '$\mathrm{Al}^{3+}$'
    'La³⁺' = '$\mathrm{La}^{3+}$'
    'K⁺'   = '$\mathrm{K}^{+}$'
    'Na⁺'  = '$\mathrm{Na}^{+}$'
    'Ag⁺'  = '$\mathrm{Ag}^{+}$'
    'OH⁻'  = '$\mathrm{OH}^{-}$'
    # Chemical formulas
    'P₂O₅' = '$\mathrm{P_2O_5}$'
    'Al₂O₃' = '$\mathrm{Al_2O_3}$'
    'La₂O₃' = '$\mathrm{La_2O_3}$'
    'SiO₂' = '$\mathrm{SiO_2}$'
    'H₂O'  = '$\mathrm{H_2O}$'
    # Atomic term symbols
    '⁴I₁₃/₂' = '$^4I_{13/2}$'
    '⁴I₁₅/₂' = '$^4I_{15/2}$'
    '⁴I₁₁/₂' = '$^4I_{11/2}$'
    '⁴I₉/₂'  = '$^4I_{9/2}$'
    '²F₅/₂'  = '$^2F_{5/2}$'
    '²F₇/₂'  = '$^2F_{7/2}$'
    # Greek letters in text
    'Δn' = '$\Delta n$'
}

# ============================================================
# REPLACEMENT MAP — Phase 2: Scientific Notation & Complex Formulas
# ============================================================
$phase2 = [ordered]@{
    'Er³⁺' = '$\mathrm{Er}^{3+}$'  # repeat for files missed in phase1
    'Yb³⁺' = '$\mathrm{Yb}^{3+}$'
    'cm⁻¹' = '$\mathrm{cm}^{-1}$'
    'cm⁻³' = '$\mathrm{cm}^{-3}$'
    '× 10⁻²¹' = '$\times 10^{-21}$'
    '× 10⁻²⁰' = '$\times 10^{-20}$'
    '× 10⁻¹⁹' = '$\times 10^{-19}$'
    '× 10⁻¹⁸' = '$\times 10^{-18}$'
    'Al(NO₃)₃·9H₂O' = '$\mathrm{Al(NO_3)_3{\cdot}9H_2O}$'
    'Er(NO₃)₃·5H₂O' = '$\mathrm{Er(NO_3)_3{\cdot}5H_2O}$'
    'Yb(NO₃)₃·5H₂O' = '$\mathrm{Yb(NO_3)_3{\cdot}5H_2O}$'
}

# ============================================================
# REPLACEMENT MAP — Phase 3: Remaining Edge Cases
# ============================================================
$phase3 = [ordered]@{
    'Q³' = '$Q^3$'; 'Q²' = '$Q^2$'; 'Q¹' = '$Q^1$'; 'Q⁰' = '$Q^0$'
    'LP₀₁' = '$\mathrm{LP_{01}}$'
    'LP₁₁' = '$\mathrm{LP_{11}}$'
    'sp³' = '$sp^3$'
    '5s²5p⁶' = '$5s^2 5p^6$'
    '4f¹³' = '$4f^{13}$'
    '4f¹¹' = '$4f^{11}$'
    '~1200 cm⁻¹' = '$\sim$1200 $\mathrm{cm}^{-1}$'
    'AgNO₃-NaNO₃-KNO₃' = '$\mathrm{AgNO_3}$-$\mathrm{NaNO_3}$-$\mathrm{KNO_3}$'
}

# ============================================================
# EXECUTION
# ============================================================
function Apply-Replacements($files, $map, $passName) {
    $count = 0
    foreach ($file in $files) {
        $content = Get-Content -Path $file.FullName -Raw
        $changed = $false
        foreach ($key in $map.Keys) {
            if ($content.Contains($key)) {
                $content = $content.Replace($key, $map[$key])
                $changed = $true
            }
        }
        if ($changed) {
            Set-Content -Path $file.FullName -Value $content -NoNewline
            $count++
        }
    }
    Write-Host "$passName : $count files updated"
}

Apply-Replacements $files $phase1 "Phase 1 (ions+chemicals+terms)"
Apply-Replacements $files $phase2 "Phase 2 (sci-notation+complex)"
Apply-Replacements $files $phase3 "Phase 3 (edge cases)"
Write-Host "Done. Now run manual grep audit for remaining Unicode."
