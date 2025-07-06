export PATH="$HOME/bin:$HOME/.local/bin:$HOME/.tmuxifier/bin:/usr/local/bin:/usr/local/sbin:$PATH"

osname=$(uname)
if [ "$osname" = "Darwin" ]; then
    export PATH="/opt/local/bin:/opt/local/sbin:/Applications/Postgres.app/Contents/Versions/17/bin:$PATH"
fi
