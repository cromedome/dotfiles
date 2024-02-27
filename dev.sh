if [ -f $HOME/perl5/perlbrew/etc/bashrc ]; then
    source ~/perl5/perlbrew/etc/bashrc
else
    if [ -d $HOME/.plenv ]; then
      export PATH=$HOME/.config/nvim/plugged/perl-language-server/server/bin:$HOME/.plenv/bin:$PATH

      if which plenv > /dev/null; then eval "$(plenv init - zsh)"; fi
    fi
fi

if [ -d $HOME/.pyenv ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi

if [ -d $HOME/.rbenv ]; then
  export PATH=$HOME/.rbenv/bin:$PATH
  eval "$(rbenv init -)"
fi

