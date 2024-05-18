# Pergunte a quantidade de Km percorridos por um carro alugado e a quantidade
# de dias pelo qual ele foi alugado. Calcule o preço a pagar, sabendo que
# o carro custa R$60 por dia e R$0.15 por Km rodado

read -p "Quantos dias vair alugar o carro: " dias
read -p "Quantos Kilometros percorridos  : " km

prexo=$( echo "(${dias} * 60) + (${km} * 0.15)" | bc )

echo "O total a pagar ficou em: R\$${prexo}"
