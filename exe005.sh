# Programa que leia um número inteiro e mostre na tela o seu secessor 
# e seu antecessor.


read -p "Digite um número plz: " numero

echo "O antecessor de ${numero} é $(( numero - 1 ))"
echo "O sucessor   de ${numero} é $(( numero + 1 ))"

