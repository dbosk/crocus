Securely and Privately Verifiable Protests
===============================================================================

This is the source code for a paper on a scheme for verifying the participation 
count of a protest in a privacy-preserving way.

The correct citation for the *latest version* of the paper is:

```bibtex
@inproceedings{ProtestVerif,
  title={Securely and Privately Verifiable Protests},
  author={%
    Daniel Bosk and
    Sonja Buchegger and
    Sébastien Gambs
  },
  URL={https://github.com/dbosk/ProtestVerif/},
}
```

Pre-compiled versions and their BibTeX entries can be found under 
[Releases][Releases].

[Releases]: https://github.com/dbosk/ProtestVerif/releases


Repo structure and compilation
===============================================================================

This repo requires some submodules. Either you cloned the repo using
```sh
git clone --recursive
```
or you have to get the submodules yourself:
```sh
git submodule update --init
```

To update the code (i.e. pull the latest version) you must update the submodules 
after the pull:
```
git pull
git submodule update
```

The file structure:

- `paper/` contains the LaTeX code for the paper.

- `slides/` contains the LaTeX code for the slides. This is a full set of slides 
  (using `beamerarticle`) where the actual slides are in the paper source. So 
  the actual _slide contents_ is in `paper/`.

- `poster/` contains the LaTeX code for the poster. This is independent from the 
  other two.  You will need xcftools and ImageMagick to convert the GIMP images 
  (.xcf) to PNG (.png).

Each directory contains a `Makefile` with instructions on how to build. Just run 
`make` in the directory of interest and it will work as expected.



File structure
===============================================================================

`Makefile` contains the build instructions and the files' dependencies. Typing 
`make` in the root directory will recurse into the subdirectories.

`venues.md` contains a list of possible venues and approaching deadlines.

Generally, for the directories. The contents is in the file `contents.tex` and 
most probably include other files. The preamble is kept in the `preamble.tex` 
file.

`preamble.tex` contains the main preamble. Some things must be different for the 
paper and the slides though, e.g. theorem environments, then the corresponding 
code must be entered into `preamble-paper.tex` and `preamble-slides.tex`, 
respectively.

`contents.tex` contains the main contents, both for slides and paper. This file
in turn includes other files for modularization.

