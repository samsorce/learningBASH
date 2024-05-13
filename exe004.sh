# leia algo pelo teclado e mostre na tela o seu tipo primitivo
# e todas as informações possíveis sobre ele

read -p "Digite algo: " dado


isalpha='^[a-zA-Z0-9]*$'
isdecimal='^[0-9]*\.[0-9]*$'
isdigit='^[0-9]*$'
isidentifier='^(%|builtin|dirs|for|local|select|type|\(\(|caller|disown|for|logout|set|typeset|\.|case|echo|function|mapfile|shift|ulimit|:|cd|enable|getopts|popd|shopt|umask|\[|command|eval|hash|printf|source|unalias|\[\[|compgen|exec|help|pushd|suspend|unset|\{||complete|exit|history|pwd|test|until|alias|compopt|export|if|read|time|variables|bg|continue|false|jobs|readarray|times|wait|bind|coproc|fc|kill|readonly|trap|while|break|declare|fg|let|return|true)$'
islower='^[a-z]*$'
isupper='^[A-Z]*$'
istitle='^[A-Z][a-z]*$'
isspace='^\ $'
isprintable='^[a-zA-Z1-9]|\.|;|=|!|%|\$|#$'

echo -n "é alphanumerico : "; [[ ${dado} =~ ${isalpha} ]]      && echo "TRUE" || echo "FALSE"
echo -n "é decima        : "; [[ ${dado} =~ ${isdecimal} ]]    && echo "TRUE" || echo "FALSE"
echo -n "é digito        : "; [[ ${dado} =~ ${isdigit} ]]      && echo "TRUE" || echo "FALSE"
echo -n "é indentificador: "; [[ ${dado} =~ ${isidentifier} ]] && echo "TRUE" || echo "FALSE"
echo -n "é lowercase     : "; [[ ${dado} =~ ${islower} ]]      && echo "TRUE" || echo "FALSE"
echo -n "é uppercase     : "; [[ ${dado} =~ ${isupper} ]]      && echo "TRUE" || echo "FALSE"
echo -n "é title         : "; [[ ${dado} =~ ${istitle} ]]      && echo "TRUE" || echo "FALSE"
echo -n "é espaço        : "; [[ ${dado} =~ ${isspace} ]]      && echo "TRUE" || echo "FALSE"
echo -n "é imprimivel    : "; [[ ${dado} =~ ${isprintable} ]]  && echo "TRUE" || echo "FALSE"

