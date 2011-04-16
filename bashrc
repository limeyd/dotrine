source ~/.bash/env
source ~/.bash/config
source ~/.bash/aliases
source ~/.bash/completions

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
source $rvm_path/contrib/ps1_functions
ps1_set # update prompt
function truncdir () {
    pth=`pwd`
    pth=(${pth//// })
    tlen=${#pth[@]}
    oput="/"
    i=0
    if [ ${pth[0]} = "home" ] ; then
        oput="~/"
        i=2
    fi
    if (( $tlen  > 3+$i )) ; then 
        echo $oput"${pth[$i]}/../${pth[$tlen-2]}/${pth[$tlen-1]}/"
    else
        tmp=${pth[@]:$i}
        echo $oput"${tmp// //}"
    fi
    unset pth tlen oput tmp i
}
