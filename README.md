# My personal dotfiles

Your dotfiles are how you personalize your system. These are mine.

## What's inside

A lot of stuff. Seriously, a lot of stuff.

## Components

There's a few special files in the hierarchy:

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **Brewfile**: This is a list of applications for [Homebrew Cask](https://caskroom.github.io)
  to install: things like Chrome and 1Password and stuff. Might want to edit
  this file before running any initial setup.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is expected
  to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded last and
  is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run
  `script/install`. To avoid being loaded automatically, its extension is `.sh`,
  not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into your
  `$HOME`. This is so you can keep all of those versioned in your dotfiles but
  still keep those autoloaded files in your home directory. These get symlinked
  in when you run `script/bootstrap`.

## Install

Run this:

```sh
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.
