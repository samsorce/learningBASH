# ler a largura altura de uma parede em metros, calcule a sua área e a 
# quantidade de tinta necessária para pintála, sabendo que cada litro
# de tinta, pinta uma área de 2m².

read -p "Largura: " largura
read -p "Altura : " altura

area=$( echo "scale=2; ${largura} * ${altura}" | bc )

litros=$( echo "scale=2; ${area} / 2" | bc )

echo "Tinta necessaria para pintar uma area de ${area}² é ${litros}L de tinta."
