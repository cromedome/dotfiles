# CromeDome's Dotfiles - Minimal dotfiles for maximum development!

Install decryption key

Install curl

Install chezmoi:
`sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- -b $HOME/.local/bin init --apply https://github.com/cromedome/dotfiles`

chezmoi will automatically do the following:
- Install packages appropriate to the OS
- Install devbox
- Install perl
- Change shell

Init hishtory
Update chezmoi config
