Verifiable Protesting
===============================================================================

This is the source code for a paper on a scheme for verifying the participation 
count of a protest in a privacy-preserving way.

The correct citation for the *latest version* of the paper is:

```bibtex
@inproceedings{ProtestVerif,
    title={Verifying Protests},
    author={Daniel Bosk and
        Sébastien Gambs and
        Sonja Buchegger},
    URL={https://github.com/dbosk/ProtestVerif/},
}
```

Pre-compiled versions and their BibTeX entries can be found under 
[Releases][Releases].

[Releases]: https://github.com/dbosk/ProtestVerif/releases


Compilation
-------------------------------------------------------------------------------

First you must clone the submodules:

```sh
git submodule update --init
```

Then, to compile the paper, run `make ProtestVerif-paper.pdf`.  Simply running 
`make` will result in `make all` which compiles paper and slides.
