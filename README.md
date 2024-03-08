# CromeDome's Dotfiles - Minimal dotfiles for maximum development!

Just a few simple steps and you're up and running:

- Install decryption key

Grab this from another machine (usually `$HOME/.age/key.txt`)

- Install minimal OS packages

On all systems, this requires curl. For macOS, install MacPorts. On
NetBSD, install Go and compile chezmoi.

- Install chezmoi:

`sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- -b $HOME/.local/bin init --apply https://github.com/cromedome/dotfiles`

chezmoi will automatically do the following:
- Install packages appropriate to the OS
- Install devbox
- Install perl
- Change shell

Once installed, you can run `~/bin/install/post-chezmoi.sh`

