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


Compilation
-------------------------------------------------------------------------------

This repo requires some submodules. Either you cloned the repo using
```sh
git clone --recursive
```
or you have to get the submodules yourself:
```sh
git submodule update --init
```

To compile the paper:
```sh
make ProtestVerif-paper.pdf
```
Simply running `make` will result in `make all` which compiles paper and 
slides.


File structure
-------------------------------------------------------------------------------

`Makefile` contains the build instructions and the files' dependencies.

`ProtestVerif-paper.tex` contains the specifics for the paper and 
`ProtestVerif-slides.tex` contains the specifics for the slides.
There is also `shortslides.tex` which can be used to produce a very short slide 
deck (useful for meetings).

The only thing that needs editing in these files is the list of authors, 
separate lists in each (due to different packages handling the list of authors 
and their affiliations).

`preamble.tex` contains the main preamble. Some things must be different for 
the paper and the slides though, e.g. theorem environments, then the 
corresponding code must be entered into `preamble-paper.tex` and 
`preamble-slides.tex`, respectively.

`contents.tex` contains the main contents, both for slides and paper. This file
in turn includes other files for modularization.

`venues.md` contains a list of possible venues and approaching deadlines.
