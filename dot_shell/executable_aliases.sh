# Set some helpful aliases
alias jhost='ssh jhost'
alias bps='cd ~/code/BestPractical'
alias cpmt='cpm install -w 8 -g --with-all --show-build-log-on-failure --test --cpanfile'
alias cpmnot='cpm install -w 8 -g --with-all --show-build-log-on-failure --cpanfile'
alias d2='cd ~/code/PerlDancer/Dancer2-official'
alias dc=docker-compose
alias du="ncdu --color dark -rr -x"
alias c='chezmoi'
alias g='git'
alias gitsm='git submodule foreach "cd $path; git checkout master; git pull; cd -"'
alias hq='hishtory query'
alias kwf='killall -9' # KILL WITH FIRE!
alias more=less
alias mux=tmuxinator
alias pb='perlbrew'
alias pbi='perlbrew install'
alias pbu='perlbrew use'
alias pclean='find . -name \*.rej | xargs rm && find . -name \*.orig | xargs rm'
alias pwgen='pwgen -cnyBs 20 1'
alias tmlw='tmux list-windows -F "#{window_active} #{window_layout}" | grep "^1" | cut -d " " -f 2'
alias tmux='tmux -2ulL'
alias wic='wezterm imgcat'

# Prettier man, via markjgardner. Mac only.
function pman {
    man -t ${@} | open -fa Preview
}

# Need the OS name for remaining alias config
osname=$(uname)

# For these next aliases, check to see if a newer utility exists, then
# gracefully degrade to standard utils
htope=$(which htop)
if [ -x "$htope" ]; then
    alias top=htop
fi

neovim=$(which nvim)
if [ -x "$neovim" ]; then
    alias vim='nvim'
fi
alias v=vim
alias vd=vimdiff

dircol=$(which gdircolors)
if [ -x "$dircol" ]; then
    alias dircolors=gdircolors
fi

digger=$(which doggo)
if [ -x "$digger" ]; then
    alias dig='doggo'
else
    digger=$(which dog)
    if [ -x "$digger" ]; then
        alias dig='dog'
    fi
fi

batcat=$(which batcat)
if [ -x "$batcat" ]; then
    alias cat="bat --theme Nord"
fi

exae=$(which exa)
if [ -x "$exae" ]; then
    alias ls='exa -aF'
    alias ll='exa -aFlghb'
else
    cls=$(which colorls)
    if [ -x "$cls" ]; then
        alias ls='colorls -aFG'
        alias ll='colorls -aFGl'
    else
        if [ "$osname" = "Linux" ]; then
            alias ls='ls -ahF --color=auto'
            alias ll='ls -ahFl --color=auto'
        else
            alias ls='ls -aF'
            alias ll='ls -ahFl'
        fi
    fi
fi
# https://askubuntu.com/questions/522051/how-to-list-all-symbolic-links-in-a-directory/
alias lsl="find . -maxdepth 1 -type l -ls"
alias lsla="find . -type l -ls"

# https://stackoverflow.com/questions/3886295/how-do-i-list-one-filename-per-output-line-in-linux
alias lol="ls -1a"

if [ -x "$exae" ]; then
    alias tree='exa --tree'
fi

# Perl stuff
alias pf='prove -It/lib -lv'
alias pc='perl -Ilib -c'

# OS-specific stuff
if [ "$osname" = "Linux" ]; then
    alias grep='grep --color=auto'
    alias tmux='tmux -2'
    alias paco="ps -u $USER f --no-header -o pid,ppid,time,cmd"
    if which xclip > /dev/null; then
        alias setclip='xclip -selection c'
        alias getclip='xclip -selection clipboard -o'
    fi
elif [ "$osname" = "NetBSD" ]; then
    alias paco="ps aux | grep $USER"
elif [ "$osname" = "OpenBSD" ]; then
    alias j='z'
    alias paco="ps aux | grep $USER"
elif [ "$osname" = "FreeBSD" ]; then
    alias j='z'
    alias paco="ps aux | grep $USER"
elif [ "$osname" = "Darwin" ]; then
    alias dsrm='find . -name \.DS_Store -exec rm -v {} \;'
    alias flushdns='sudo dscacheutil -flushcache'
    alias getdate='date "+%Y-%m-%d"'
    # See http://rabexc.org/posts/using-ssh-agent
    alias ssh='ssh -A'
    alias paco="ps aux | grep $USER"
    alias remount='sudo automount -vc'
fi

# Clearbuilt
alias cbstart="VBoxManage startvm Clearbuilt --type headless"
alias moshdev='mosh gate ssh aws-dev'
alias moshdev2='mosh gate ssh aws-dev2'
alias moshepwt='mosh gate ssh epwt1'

# Functions
f() {
    find . -type f -name "*$1*"
}

h() {
    if [ $1 != '' ]; then
        history | grep $1
    else
        history
    fi
}

killpid() {
    sudo kill $( cat $1 );
}
