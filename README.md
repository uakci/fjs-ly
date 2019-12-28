# `fjs-ly`

This repository houses the [Lilypond](http://lilypond.org) files
required to typeset the sheet music and diagrams as seen on the [FJS
website](https://misotanni.github.io/fjs)
([repo](https://github.com/misotanni/misotanni.github.io/)). To build
the files in the FJS repository tree, copy the files recursively to
`fjs/assets/`, then run `make`.

* `fjs.ly` contains the elementary definitions which facilitate
  writing FJS.
* `embed-prelude.ly` is used for diagrams (*embeds*).
* `Makefile` does all the compiling work.

**Disclaimer:** The method employed here has **several severe
drawbacks**:

  - It does not work with the accidental system, requiring you to
    write out the notes as they are to appear on the page.
  - There is no easy way to define key signatures.
  - The MIDI output is bonkers.

I'm aware that the current solution is ugly — I'm currently working on
a rewrite that tweaks Lilypond's internals to suit the FJS's needs a
bit more closely.
