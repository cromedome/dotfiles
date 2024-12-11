osname=$(uname)

export FZF_DEFAULT_COMMAND="fd . $HOME"
if [ "$osname" != "OpenBSD" ]; then
    export FZF_CTRL_R_COMMAND="$FZF_DEFAULT_COMMAND"
fi
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"

source ~/.shell/fzf-key-bindings.zsh
