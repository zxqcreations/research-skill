# CLAUDE.md — Auditable Research Skill

## Metadata
- **Name:** auditable-research
- **Version:** 1.0.0
- **Description:** PhD-level deep research launch workflow — build a complete research infrastructure for any new scientific or engineering domain from scratch. Includes 5-phase methodology, 12-dimension audit framework, reproducible simulation code, and comprehensive deliverable packaging.
- **Triggers:** User proposes a new research topic · needs systematic literature survey · building research infrastructure · writing PhD proposal · auditing existing research

## Overview

This skill provides a rigorous, audit-driven methodology for conducting PhD-level deep research on any scientific or engineering topic. The methodology has been validated on a reference project achieving an audit score of 8.90/10 from an initial 6.03/10 through systematic iterative improvement.

The methodology proceeds through 5 phases:
0. **Requirements Definition** — scope, dimensions, deliverables
1. **Breadth-First Search** — parallel web searches + adversarial verification
2. **Structured Authoring** — master document + specialized documents
3. **Multi-Dimensional Auditing** — 12-dimension comprehensive audit
4. **Iterative Improvement** — phased enhancement driven by audit findings
5. **Packaging & Delivery** — navigation docs, HTML dashboard, Git push

## Core Principles

1. **不图快·不省token** — Every concept explained in detail; every formula fully derived
2. **先广度·后深度** — Parallel searches first to establish landscape, then deep-dive per dimension
3. **先主文件·后专题** — Master overview defines framework; specialized docs expand details
4. **审计驱动改进** — Structured multi-dimensional audit → phased systematic improvement
5. **诚实优于完美** — Uncertain values: "~"; unverified claims: "待核实"; research gaps: "未见报道"
6. **代码必须跑通** — All simulation scripts must be executed and produce physically reasonable output
7. **保留所有中间产物** — Search materials, audit reports, improvement plans → all archived
8. **可追溯性** — Key values cite sources; DOIs provided; "measured" vs "modeled" vs "general knowledge" distinguished
9. **LaTeX必须逐字审计** — NEVER use scripts for formula conversion; ALWAYS manually read line-by-line. Scripts miss context (math mode vs text, partial conversions, mixed notations). Every edit must be a conscious human decision.
10. **引用必须可验证** — EVERY citation must be independently verifiable via DOI resolution or Google Scholar search. Fabricated references = immediate removal. DOI errors = immediate correction. No exceptions.

## Execution Instructions

When invoked, follow this sequence:

### Phase 0: Requirements

1. Clarify research scope: materials, methods, applications, geographic coverage, time span
2. Determine research level: PhD / Masters / Review
3. Identify core dimensions to cover (typically 5-10)
4. Confirm output formats: Markdown documents, Python scripts, HTML dashboard
5. Note any special requirements (detail level, token budget, strictness)

### Phase 1: Breadth-First Search

1. Decompose topic into 5-8 search angles
2. Execute parallel WebSearch (4 rounds × 5 searches = 20 total)
3. Launch Deep Research workflow with adversarial verification (100+ agents)
4. Create directory structure with 10+ topic folders
5. **CRITICAL:** Save ALL intermediate materials, URLs, and search queries

### Phase 2: Structured Authoring

1. Write master document FIRST (defines framework for all specialized docs)
2. Write specialized documents (one per topic area)
3. Standards:
   - Every term defined on first use
   - Every formula fully derived with physical interpretation
   - All data in tables with source attribution
   - Cross-reference between master and specialized docs
   - ASCII diagrams for processes and frameworks

### Phase 3: Multi-Dimensional Auditing

Execute the 12-dimension audit (see AUDIT-GUIDE.md for full details):

1. **LaTeX Format** (≥4 rounds): Unicode→LaTeX, Greek letters, `\text` misuse, double-wrapping
2. **Scientific Accuracy** (30%): Concepts, formulas, numerical consistency, consensus alignment
3. **Completeness** (25%): Missing sections, boundary conditions, parameters, references
4. **Detail & Specificity** (25%): Vague→specific, data→tables, methods→reproducible
5. **Authenticity & Honesty** (20%): Source tracing, extrapolation limits, honest labeling
6. **Cross-Reference Consistency**: Internal links, section references, figure/table numbers
7. **Terminology Consistency**: Same concept = same name across all documents
8. **Unit & Dimension Verification**: All formulas dimensionally consistent (SI/CGS check)
9. **Numerical Sanity**: Order-of-magnitude checks on all computed values
10. **Reference Integrity**: DOI validity, peer-review status, primary vs secondary sources
11. **Self-Consistency Loop**: Input parameters → model → predictions → compare with literature
12. **Reproducibility**: Could another researcher reproduce results from documentation alone?

### Phase 4: Iterative Improvement

1. Generate structured audit report with findings, severity, and fix suggestions
2. Create phased improvement plan:
   - Phase A: Quick fixes (scientific errors, symbol unification, vague→specific)
   - Phase B: Content additions (missing sections, competitive comparison, failure modes)
   - Phase C: Deep enhancements (uncertainty propagation, literature tracing, new content)
3. Execute each phase with Task tracking
4. After each phase: re-audit and update scores
5. Write and verify all simulation code (must actually run)
6. **CRITICAL:** Never fabricate data. Mark all unverifiable claims clearly.

### Phase 5: Packaging & Delivery

1. Create navigation documents:
   - `ROADMAP.md` — timeline research route + reading order
   - `GAP-ANALYSIS.md` — remaining gaps + manual tasks + knowledge framework
   - `MINDMAP.md` — Mermaid mind maps + document navigation + flowcharts
   - `AUDIT-REPORT.md` — final structured audit report
2. Create single-file HTML dashboard:
   - Dark theme, responsive cards
   - Interactive Mermaid.js diagrams
   - All key tables and statistics
   - Navigation to all document sections
3. Git init → commit → push to remote
4. Include comprehensive README with quick-nav table

## Audit Strategy Reference

The full 12-dimension audit methodology is documented in `AUDIT-GUIDE.md`.
The complete 5-phase methodology with examples is in `METHODOLOGY.md`.
Quick checklists for each phase are in `CHECKLIST.md`.
Document templates for new projects are in `TEMPLATES/`.

## Key Differences from Standard Research Approaches

| Standard Approach | This Skill |
|------|------|
| Linear search → write | Breadth-first parallel search → verify → write |
| Single-pass audit | 12-dimension, ≥4 round iterative audit |
| No adversarial verification | 100+ agent adversarial claim verification |
| No code or code untested | All simulation scripts built and verified |
| Vague improvements | Phased, scored, ROI-ranked improvement plan |
| Single deliverable | 5 navigation docs + HTML dashboard + code + Git |
| Sources not traced | Every key value traceable to DOI or marked "待核实" |
