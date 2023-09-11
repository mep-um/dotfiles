mep-um dotfiles
===================

The installation an management of these dotfiles were inspired by the [thoughtbot dotfiles](https://github.com/thoughtbot/dotfiles).

Install
-------

Clone repo:

    git clone git://github.com/meppum/dotfiles.git

Run setup.sh:

  sh setup.sh

Updating Symlinks
-----------------

You can safely run `rcup` multiple times to update:

    rcup

You should run `rcup` after pulling a new version of the repository to symlink
any new files in the repository.

Make your own customizations
----------------------------

Put your customizations in dotfiles appended with `.local`:

* `~/.aliases.local`
* `~/.git_template.local/*`
* `~/.gitconfig.local`
* `~/.gvimrc.local`
* `~/.psqlrc.local` (we supply a blank `.psqlrc.local` to prevent `psql` from
  throwing an error, but you should overwrite the file with your own copy)
* `~/.tmux.conf.local`
* `~/.vimrc.local`
* `~/.vimrc.bundles.local`
* `~/.zshenv.local`
* `~/.zshrc.local`
* `~/.zsh/configs/*`
