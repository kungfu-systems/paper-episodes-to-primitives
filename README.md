# From Episodes to Primitives

This repository contains the LaTeX source for:

```text
From Episodes to Primitives:
Causal Historical Assets for Evidence-Governed Ontology Revision
```

The paper studies a narrow but consequential systems question: can a history of
well-formed causal Episodes preserve not only previous answers, but the future
capacity to discover that the object model used to ask those questions was
incomplete?

It develops an evidence-governed mechanism across KFD-4, KFD-5, and the draft
KFD-6:

```text
perspective-bound replay
  -> candidate genesis
  -> independent qualification
  -> held-out evaluation
  -> separated promotion authority
```

The paper does not claim that stored traces automatically become Episodes,
that Episode volume predicts discovery, or that current agents have satisfied
the KFD-6 activation gate. Current KFD live cases are used as a bounded early
evidence cut, not as proof of universality or historical novelty.

Publisher: Kungfu Origin Technology Limited.<br>
Contact: Keren Dong <keren.dong@kungfu.link>.

## Repository Naming

This repository uses the `paper-*` prefix for a standalone Kungfu research
artifact. The prefix names the repository role; LaTeX is an implementation
detail. See [`docs/repository-naming.md`](docs/repository-naming.md).

## Layout

- [`paper/main.tex`](paper/main.tex): LaTeX entrypoint.
- [`paper/sections/`](paper/sections/): paper sections.
- [`paper/references.bib`](paper/references.bib): bibliography.
- [`docs/MAP.md`](docs/MAP.md): repository and verification map.

## Build

CI builds the PDF through Buildchain's pinned LaTeX Docker toolchain declared
in [`.buildchain/buildchain.toml`](.buildchain/buildchain.toml). Buildchain also
produces the publication manifest, passport, archive registry, source bundle,
npm package, and GitHub Release evidence.

The package coordinate is:

```text
@kungfu-tech/paper-episodes-to-primitives
```

npm Trusted Publishing is scoped to this repository and
`.github/workflows/paper-release.yml`.

Source-only checks:

```sh
make check
```

With a TeX toolchain installed:

```sh
make pdf
```

The public artifact is `_build/episodes-to-primitives.pdf`.

## Status

This is an alpha research artifact. The Episode asset model, KFD-4/5 mechanism,
and proposed evaluation protocol are specified; KFD-6 remains a draft and has
only early feasibility evidence. Stronger causal, quantitative, cross-domain,
or universal claims require prospective experiments and independent adopters.
