# Set up our software development environment
export EDITOR=nvim
export GIT_EDITOR=nvim
export VISUAL=nvim
export PGHOST=db # Default when no nost specified
export PGUSER=postgres
export FPATH=$HOME/.shell/eza:$FPATH

# SSH agent
if [ ! -z "$SSH_AUTH_SOCK" ] \
    && [ ! -e "$HOME/.ssh/agent" ] \
    && [ "$SSH_AUTH_SOCK" != "$HOME/.ssh/agent" ]; \
then
    ln -snf "$SSH_AUTH_SOCK" "$HOME/.ssh/agent"
    export SSH_AUTH_SOCK="$HOME/.ssh/agent"
fi

# Additional environment setup here
export PAGER=/usr/bin/less
osname=$(uname)

if [ "$osname" != "OpenBSD" ]; then
    export LESSOPEN="| bat %s"
else
    export LC_ALL=en_US.UTF-8
fi
export LESS=' -R '

if [ "$osname" = "NetBSD" ]; then
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/pkg/lib
    unset LSCOLORS
fi

