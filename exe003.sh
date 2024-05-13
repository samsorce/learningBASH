# leia dois números e tente mostrar a soma entre eles.


read -p "Primeiro número: " num1
read -p "Segundo  número: " num2

echo "A soma é  ${num1} + ${num2} = $(( num1 + num2 ))"
