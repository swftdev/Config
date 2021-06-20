PROMPT=" λ: "
RPROMPT="%~"

alias ls='gls --color -h --group-directories-first'


code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}


