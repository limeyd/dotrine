source ~/.bash/env
source ~/.bash/config
source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/ps1_functions

#function truncdir () {
    #pth=`pwd`
    #pth=(${pth//// })
    #tlen=${#pth[@]}
    #oput="/"
    #i=0
    #if [ ${pth[0]} = "home" ] ; then
        #oput="~/"
        #i=2
    #fi
    #if (( $tlen  > 3+$i )) ; then 
        #echo $oput"${pth[$i]}/../${pth[$tlen-2]}/${pth[$tlen-1]}/"
    #else
        #tmp=${pth[@]:$i}
        #echo $oput"${tmp// //}"
    #fi
    #unset pth tlen oput tmp i
#}
