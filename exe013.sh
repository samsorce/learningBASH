# ler o salário de um funcionário e mostre seu novo salário, com 15% de aumento

read -p "Qual é seu salario: " salario
novo_salario=$( echo "${salario} + (${salario} * 15 / 100)" | bc )

echo "Um funcionário que ganhava R\$${salario}, com 15% de aumento, passa a receber R\$${novo_salario}"

