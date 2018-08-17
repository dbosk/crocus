# Document source structure

The file `paper.tex` is the main file to use for compilation. It includes the 
preamble located in `preamble.tex` and the contents in `contents.tex`.

- `paper.tex`
  - `preamble.tex`
  - `preamble-paper.tex` contains stuff for paper incompatible with beamer.
  - `preamble-slides.tex` contains stuff for beamer incompatible with paper.
  - `contents.tex` contains the main contents.

The file `contents.tex` contains the main contents which includes the following 
files:
- `abstract.tex` contains the abstract.
- `intro.tex` contains the Introduction section.
- `system-model.tex` contains the System Model section.
- `properties.tex` contains the section on desired security properties.
- `related-work.tex` contains the section on Related Work.
- `building-blocks.tex` contains the section on Building Blocks, it includes
  - `distance-bounding.tex` describes distance bounding.
  - `anon-cred.tex` describes anonymous credentials.
  - `DB-anon-cred.tex` introduces distance-bounding anonymous credentials.
  - `location-proofs.tex` describes location proofs.
  - `timestamp.tex` describes time stamping storage, i.e. blockchains.
- `protocol.tex` describes the protocol.
- `analysis.tex` contains the security and performance analysis.
- `conclusions.tex` contains the discussion and conclusions.
