# ler o preço de um produto e mostre seu novo preço, com 5% de desconto.

read -p "Preço do produto R\$: " pproduto

novo_pproduto=$( echo "${pproduto} - (${pproduto} * 5 / 100)" | bc )

echo "O produto que custava R\$${pproduto}, na promoção com desconto de 5% vai custar R\$${novo_pproduto}"
