# linuxconfig

A repo to store my personal configuration files, using the *bare git repo* method.<br><br>

The programs I use and keep track of its configurations are:

* X.org
* i3wm
* polybar
* bash

## Setup
---

First and foremost, to setup a bare git repo, the following commands are needed:

1 - Initialize the repo as bare in a directory of your choice (in this case $HOME/.config/linuxconfig):

```sh
git init --bare $HOME/.config/linuxconfig
```

2 - Create an alias for the git command, for example **lconf** (add it to your .bashrc, or whatever you use)

```sh
alias lconf='git --git-dir=$HOME/.config/linuxconfig/ --work-tree=$HOME'
```

This is just for calling the git command globaly, but for this repo in specific.

3 - Configure the bare repo to only track wanted/added files (otherwise git would take every single file in $HOME as an untracked file) now using the alias we just created:

```sh
lconf config --local status.showUntrackedFiles no
```

4 - Now you can *add* and manage all your config files to the repo, issuing the alias.


## Cloning
---

To replicate this setup, clone the repo, and move its contents to your $HOME directory.