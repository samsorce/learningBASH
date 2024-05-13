# leia algo pelo teclado e mostre na tela o seu tipo primitivo
# e todas as informações possíveis sobre ele

read -p "Digite algo: " dado

isalpha='^[a-zA-Z0-9]*$'
isdecimal='^[0-9]*\.[0-9]*$'
isdigit='^[0-9]*$'
isidentifier='^(%|builtin|dirs|for|local|select|type|\(\(|caller|disown|for|logout|set|typeset|\.|case|echo|function|mapfile|shift|ulimit|:|cd|enable|getopts|popd|shopt|umask|\[|command|eval|hash|printf|source|unalias|\[\[|compgen|exec|help|pushd|suspend|unset|\{||complete|exit|history|pwd|test|until|alias|compopt|export|if|read|time|variables|bg|continue|false|jobs|readarray|times|wait|bind|coproc|fc|kill|readonly|trap|while|break|declare|fg|let|return|true)$'

if [[ ${dado} =~ ${isalpha} ]]; then
	echo "é alphanumerico : TRUE"
else
	echo "é alphanumerico : FALSE"
fi


if [[ ${dado} =~ ${isdecimal} ]]; then
	echo "é decimal       : TRUE"
else
	echo "é decimal       : FALSE"
fi


if [[ ${dado} =~ ${isdigit} ]]; then
	echo "é digito        : TRUE"
else
	echo "é digito        : FALSE"
fi


if [[ ${dado} =~ ${isidentifier} ]]; then
	echo "é indentificador: TRUE"
else
	echo "é indentificador: FALSE"
fi
