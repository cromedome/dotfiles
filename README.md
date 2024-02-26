# CromeDome's Dotfiles - Minimal dotfiles for maximum development!

Install decryption key

Install chezmoi:
`sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- -b $HOME/.local/bin init --apply ssh://git@code.crome-plated.com:2015/cromedome/dotfiles.git`

chezmoi will automatically do the following:
- Install packages appropriate to the OS
- Install devbox
- Init devbox

Init hishtory
