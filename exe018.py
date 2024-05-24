# ler um ângulo qualquer e mostre na tela o valor do seno, cosseno e tangente desse ângulo


read -p "Digite um angulo: " angulo 
seno=$(     python3 -c "import math; print(math.sin(math.radians(${angulo})))" )
cosseno=$(  python3 -c "import math; print(math.cos(math.radians(${angulo})))" )
tangente=$( python3 -c "import math; print(math.tan(math.radians(${angulo})))" )


echo "O ângulo de ${angulo} tem o SENO de ${seno}"
echo "O ângulo de ${angulo} tem o COSSENO de ${cosseno}"
echo "O ângulo de ${angulo} tem a TANGENTE de ${tangente}"

