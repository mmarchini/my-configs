# Setup fzf
# ---------
if [[ ! "$PATH" == */home/matheus/.fzf/bin* ]]; then
  export PATH="$PATH:/home/matheus/.fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == */home/matheus/.fzf/man* && -d "/home/matheus/.fzf/man" ]]; then
  export MANPATH="$MANPATH:/home/matheus/.fzf/man"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/matheus/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/matheus/.fzf/shell/key-bindings.bash"

# Configurations
#---------------

export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

