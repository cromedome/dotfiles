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
- Install Starship prompt (oh-my-posh on OpenBSD)
- Installs neovim extensions
- Install hishtory on non-work boxes
- Change shell to zsh
- Installs perlbrew
- Installs my personal Perl toolchain

This leans heavily on articles from [Nate Landau](https://natelandau.com/managing-dotfiles-with-chezmoi/)
and [Alfonso Fortunato](https://alfonsofortunato.com/posts/dotfile/).
