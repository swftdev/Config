PROMPT=" %~ $ "

# Env exports
export EDITOR=vi

# Aliases
alias ls='gls --color -h --group-directories-first'

# Path
path+=('/Library/Frameworks/Python.framework/Versions/3.9/bin')
path+=('/usr/local/bin')
export PATH

# Functions
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}


# Changing default features
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS

SAVEHIST=5000
HISTSIZE=2000

