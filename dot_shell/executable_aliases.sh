# Set some helpful aliases
alias cpmt='cpm install -w 8 -g --with-all --show-build-log-on-failure --test --cpanfile'
alias cpmnot='cpm install -w 8 -g --with-all --show-build-log-on-failure --cpanfile'
alias dirdiff="diff -rupN"
alias dsrm='find . -name \.DS_Store -exec rm -v {} \;'
alias du="ncdu --color dark -rr -x"
alias c='chezmoi'
alias g='git'
alias gitsm='git submodule foreach "cd $path; git checkout master; git pull; cd -"'
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
htope=$(whence htop)
if [ -x "$htope" ]; then
  alias top=htop
fi

neovim=$(whence nvim)
if [ -x "$neovim" ]; then
  alias vim='nvim'
fi
alias v=vim
alias vd=vimdiff

dircol=$(whence gdircolors)
if [ -x "$dircol" ]; then
  alias dircolors=gdircolors
fi

digger=$(whence doggo)
if [ -x "$digger" ]; then
  alias dig='doggo'
else
  digger=$(whence dog)
  if [ -x "$digger" ]; then
    alias dig='dog'
  fi
fi

batcat=$(whence batcat)
if [ -x "$batcat" ]; then
  alias cat="batcat --theme Nord"
else
  bc=$(whence bat)
  if [ -x "$bc" ]; then
    alias cat="bat --theme Nord"
  fi
fi

ezae=$(whence eza)
if [ -x "$ezae" ]; then
  alias ls="eza -a -F always $@"
  alias ll="eza -lahgb -F always --git --icons=always $@"
else
  cls=$(whence colorls)
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
  if whence xclip >/dev/null; then
    alias setclip='xclip -selection c'
    alias getclip='xclip -selection clipboard -o'
  fi
elif [ "$osname" = "NetBSD" ]; then
  alias paco="ps aux | grep $USER"
elif [ "$osname" = "OpenBSD" ]; then
  alias j='z'
  alias paco="ps aux | grep $USER"
  if whence xclip >/dev/null; then
    alias setclip='xclip -selection c'
    alias getclip='xclip -selection clipboard -o'
  fi
elif [ "$osname" = "FreeBSD" ]; then
  alias j='z'
  alias paco="ps aux | grep $USER"
elif [ "$osname" = "Darwin" ]; then
  alias flushdns='sudo dscacheutil -flushcache'
  alias getdate='date "+%Y-%m-%d"'
  # See http://rabexc.org/posts/using-ssh-agent
  alias ssh='ssh -A'
  alias paco="ps aux | grep $USER"
  alias remount='sudo automount -vc'
fi

# Perlbrew-based aliases
# See https://perlbrew.pl/Install-a-sitecustomize.pl-file-with-perlbrew.html
#alias dzil=`which dzil`
alias mimetype=$(which mimetype)
alias exiftool=$(which exiftool)
alias mbtiny=$(which mbtiny)
alias nytprofhtml=$(which nytprofhtml)
alias sqitch=$(which sqitch)
alias carton=$(which carton)
alias perltidy=$(which perltidy)
alias perlcritic=$(which perlcritic)
alias ot=$(which ot)

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
  sudo kill $(cat $1)
}

# From https://www.reddit.com/r/Tailscale/comments/1gy3vm5/tssh_tailscale_ssh_manager/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
function tssh() {
  #test -x "/Applications/Tailscale.app/Contents/MacOS/Tailscale" && alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
  h="$(
    (
      echo -e 'DNS\tHostName\tOnline\tTags\tUser'
      tailscale status --json |
        jq -r '. as $root | .Peer[] | . as $peer | $root.User[] |
      select(.ID == $peer.UserID) |
      [ $peer.DNSName,
        $peer.HostName,
        $peer.Online,
        ($peer.Tags // [] | join(",")),
        .DisplayName] | @tsv' |
        sort -t $'\t' -k3,3r -k5,5 -k4,4
    ) |
      gum table -s $'\t' \
        --height=$(tailscale status --json | jq '.Peer | length +1') \
        --widths=30,10,6,25,14 |
      awk '{print $1}'
  )"
  [ -n "$h" ] && ssh "$h"
}

opp() {
    op item get $1 --format json --fields password | jq .value
}
