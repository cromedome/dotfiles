export PATH="$HOME/bin:$HOME/.local/bin:$HOME/.tmuxifier/bin:/usr/local/bin:/usr/local/sbin:$PATH"

osname=$(uname)
if [ "$osname" = "Darwin" ]; then
    export PATH="/opt/local/bin:/opt/local/sbin:/opt/local/lib/mariadb-10.6/bin/:/Applications/Postgres.app/Contents/Versions/15/bin:$PATH"
else
    export PATH="$HOME/Applications/datagrip/bin:$HOME/Applications/pycharm/bin:$PATH"
fi
