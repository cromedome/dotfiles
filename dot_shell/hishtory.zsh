osname=$(uname)

if [ "$osname" != "Darwin" ]; then
    export PATH="$PATH:/home/jason/.hishtory"
    source $HOME/.hishtory/config.zsh
fi

