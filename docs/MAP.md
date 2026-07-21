# Repository Map

## Paper Source

- `paper/main.tex`: title, abstract, and section assembly.
- `paper/sections/01-introduction.tex`: problem and contributions.
- `paper/sections/02-episode-assets.tex`: Episode historical asset model.
- `paper/sections/03-mechanism.tex`: KFD-4/5/6 discovery mechanism.
- `paper/sections/04-question-rights.tex`: problem-definition and governance.
- `paper/sections/05-evidence.tex`: bounded KFD live-case evidence cut.
- `paper/sections/06-evaluation.tex`: falsifiable evaluation protocol.
- `paper/sections/07-related-work.tex`: adjacent research and distinction.
- `paper/sections/08-limitations.tex`: non-claims and failure modes.
- `paper/sections/09-conclusion.tex`: conclusion.
- `paper/references.bib`: bibliography and exact KFD source coordinates.

## Buildchain

- `.buildchain/buildchain.toml`: publication and release contract.
- `.buildchain/contract-lock.json`: accepted Buildchain v2 contract root.
- `.github/workflows/build.yml`: reproducible publication artifact build.
- `.github/workflows/verify.yml`: version and repository verification.
- `.github/workflows/paper-release.yml`: sealed npm and GitHub paper release.
- `package.json`: source identity; release package contents are synthesized by
  Buildchain.

## Governance

- `AGENTS.md`: public-safe agent entrypoint.
- `CONTRIBUTING.md`: contribution and evidence rules.
- `SECURITY.md`: sensitive disclosure boundary.
- `TRADEMARK.md`: trademark boundary.
- `ACCEPTABLE_USE.md`: public data and use boundary.
- `PROVIDER_COMPLIANCE.md`: provider and corpus boundary.

## Validation

Run `make check` for source checks and `make pdf` for the local PDF. CI adds the
pinned toolchain build, publication manifest/passport, source bundle, version
state, and release evidence. Both build paths pin PDF time metadata to the
source commit through `SOURCE_DATE_EPOCH`.
