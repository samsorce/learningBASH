# Lear duas notas de um aluno, clacule e mostre a sua média

read -p "Entre com a primeira nota: " nota_1
read -p "Entre com a segunada nota: " nota_2 

media=$( echo "scale=1; (${nota_1} + ${nota_2}) / 2" | bc )

echo "A média das notas: ${media}"

