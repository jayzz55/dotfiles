# dotfiles

Jaya's dotfiles.

## Prerequisites

* OS X
* [Homebrew](http://brew.sh/)

## Installation

    $ git clone git@github.com:gabebw/dotfiles.git ~/.dotfiles
    $ cd ~/.dotfiles
    $ ./install.sh

It will install [rcm] and use that to safely symlink the dotfiles, prompting you
if a file already exists (like if you already have `~/.zshrc`).

[rcm]: http://thoughtbot.github.io/rcm/rcm.7.html

## Organization

`rcm` will symlink all files into place, keeping the folder structure relative
to the tag root. However, non-configuration files and folders like `system/`,
`Brewfile`, `README.md`, etc will not be linked because they are in the
`EXCLUDES` section of the [`rcrc`](/rcrc) file.

## Attribution

Many scripts and configurations have been inspired by or outright stolen from
people at thoughtbot. Of special note, I've stolen many things from
[Chris Toomey], [Gordon Fontenot],[Gabriel Berke-Williams] and , among others that I'm sure I'm forgetting.

[Chris Toomey]: https://github.com/christoomey/dotfiles
[Gordon Fontenot]: https://github.com/gfontenot/dotfiles
[Gabriel Berke-Williams]: https://github.com/gabebw/dotfiles
