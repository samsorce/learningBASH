# leia um número Real qualquer pelo teclado e mostre na tela a sua porção inteira
# Ex: 6.127 --> 6

read -p "Digite um número: " number

parte_inteira=$( echo "${number} / 1" | bc )

echo "O número {number} tem a parte inteira ${parte_inteira}"
