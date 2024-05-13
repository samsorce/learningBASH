# Leia um número e mostre o seu dobro, triplo, e raiz quadrada


read -p "Entre com um número: " numero

echo "O dobro  de ${numero} = $(( numero * 2 ))"
echo "O triplo de ${numero} = $(( numero * 3 ))"

square_root=$( echo "pow(${numero}, 0.5)" | bc ~/.bcrc -l )
echo "A raiz²  de ${numero} = ${square_root}"
