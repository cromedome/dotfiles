# CromeDome's Dotfiles - Minimal dotfiles for maximum development!

Just a few simple steps and you're up and running:

- Install decryption key

Grab this from another machine (usually `$HOME/.age/key.txt`)

- Install minimal OS packages

On all systems, this requires curl. For macOS, install MacPorts. On
NetBSD, grab pkgsrc-wip and install chezmoi.

- Install chezmoi:

`sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- -b $HOME/.local/bin init --apply https://github.com/cromedome/dotfiles`

chezmoi will automatically do the following:
- Install packages appropriate to the OS
- Install Starship prompt
- Install Atuin (non-macOS boxes for $work reasons)
- Change shell to zsh

Once installed, `~/bin/install/post-chezmoi.sh` runs automatically:
- Installs Perl
- Installs my personal Perl toolchain

