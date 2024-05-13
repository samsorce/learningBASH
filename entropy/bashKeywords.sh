$ help <tab,tab>
%          builtin    dirs       for        local      select     type
(( ... ))  caller     disown     for ((     logout     set        typeset
.          case       echo       function   mapfile    shift      ulimit
:          cd         enable     getopts    popd       shopt      umask
[          command    eval       hash       printf     source     unalias
[[ ... ]]  compgen    exec       help       pushd      suspend    unset
{ ... }    complete   exit       history    pwd        test       until
alias      compopt    export     if         read       time       variables
bg         continue   false      jobs       readarray  times      wait
bind       coproc     fc         kill       readonly   trap       while
break      declare    fg         let        return     true

$ isidentifier='%          builtin    dirs       for        local      select     type
(( ... ))  caller     disown     for ((     logout     set        typeset
.          case       echo       function   mapfile    shift      ulimit
:          cd         enable     getopts    popd       shopt      umask
[          command    eval       hash       printf     source     unalias
[[ ... ]]  compgen    exec       help       pushd      suspend    unset
{ ... }    complete   exit       history    pwd        test       until
alias      compopt    export     if         read       time       variables
bg         continue   false      jobs       readarray  times      wait
bind       coproc     fc         kill       readonly   trap       while
break      declare    fg         let        return     true'

$ [[ 'if' =~ ${isidentifier} ]] && echo TRUE || echo FALSE

$ isidentifier='[if|jobs|kill]'
$ [[ 'if' =~ ${isidentifier} ]] && echo TRUE || echo FALSE

$ tmp='%          builtin    dirs       for        local      select     type
(( ... ))  caller     disown     for ((     logout     set        typeset
.          case       echo       function   mapfile    shift      ulimit
:          cd         enable     getopts    popd       shopt      umask
[          command    eval       hash       printf     source     unalias
[[ ... ]]  compgen    exec       help       pushd      suspend    unset
{ ... }    complete   exit       history    pwd        test       until
alias      compopt    export     if         read       time       variables
bg         continue   false      jobs       readarray  times      wait
bind       coproc     fc         kill       readonly   trap       while
break      declare    fg         let        return     true'

$ echo ${tmp} | sed 's/\ /|/g'
%|builtin|dirs|for|local|select|type|((|...|))|caller|disown|for|((|logout|set|typeset|.|case|echo|function|mapfile|shift|ulimit|:|cd|enable|getopts|popd|shopt|umask|[|command|eval|hash|printf|source|unalias|[[|...|]]|compgen|exec|help|pushd|suspend|unset|{|...|}|complete|exit|history|pwd|test|until|alias|compopt|export|if|read|time|variables|bg|continue|false|jobs|readarray|times|wait|bind|coproc|fc|kill|readonly|trap|while|break|declare|fg|let|return|true



$ tmp=$(echo ${tmp} | sed 's/\ /|/g')


test.sh
   # tmp='^(%|builtin|dirs|for|local|\(\(|logout)$'  # parentheses need to be escaped
    tmp='^(:|%|builtin|dirs|for|local|\(\(|logout|\{|\[\[)$'

    if [[ $1 =~ ${tmp} ]]; then
	    echo "iskeyword : TRUE"
    else
	    echo "isKeyword : FLASE"
    fi


