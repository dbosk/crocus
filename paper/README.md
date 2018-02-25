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
- `SystemModel.tex` contains the System Model section.
- `properties.tex` contains the section on desired security properties.
- `RelatedWork.tex` contains the section on Related Work.
- `BuildingBlocks.tex` contains the section on Building Blocks, it includes
  - `DistanceBounding.tex` describes distance bounding.
  - `anon-cred.tex` describes anonymous credentials.
  - `DB-anon-cred.tex` introduces distance-bounding anonymous credentials.
  - `LocationProofs.tex` describes location proofs.
  - `TimeStamp.tex` describes time stamping storage, i.e. blockchains.
- `protocol.tex` describes the protocol.
- `security.tex` contains the security analysis.
- `conclusions.tex` contains the discussion and conclusions.
