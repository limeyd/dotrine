source ~/.bash/env
source ~/.bash/config
source ~/.bash/aliases
source ~/.bash/completions

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
source $rvm_path/contrib/ps1_functions
ps1_set # update prompt
