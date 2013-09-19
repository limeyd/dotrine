source ~/.bash/env
source ~/.bash/config
source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/ps1_functions

[[ -s "$HOME/.tmuxifier/init.sh" ]] && source "$HOME/.tmuxifier/init.sh"

export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"
