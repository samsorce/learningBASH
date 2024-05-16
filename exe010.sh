# leia quanto dinheiro uma pessoa tem na carteira e mostre quantos 
# Dolares ela pode compara 

read -p "Quantos R$ você tem: " carteira

dolares=$( echo "scale=2; ${carteira} * 0.19" | bc )

echo "com R\$${carteira} voce pode comprar \$${dolares}"
