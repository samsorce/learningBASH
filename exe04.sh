# leia algo pelo teclado e mostre na tela o seu tipo primitivo
# e todas as informações possíveis sobre ele

read -p "Digite algo: " dado

if [[ ${dado} =~ (a-zA-Z0-9)* ]]; then
        echo "é alphanumerico : TRUE"
else
        echo "é alphanumerico : FALSE"
fi

# echo "é decimal       : TRUE"
# echo "é decimal       : FALSE"

if [[ ${dado} =~ (0-9)* ]]; then
        echo "é digito        : TRUE"
else
        echo "é digito        : FALSE"
fi
