# Ler um valor em metros e o exiba convertido em centímetros e milímetros

read -p "Qual é o valor em metros: " metros

metros_para_centimetros=$(echo "scale=2; ${metros} * 100" | bc )
metros_para_milimetros=$(echo "scale=2; ${metros} * 1000" | bc )

echo "${metros}M = ${metros_para_centimetros}cm"
echo "${metros}M = ${metros_para_milimetros}mm"


read -p "Digite um valor: " medida 

dm=$(echo "scale=2; ${medida} * 10"   | bc)
cm=$(echo "scale=2; ${medida} * 100"  | bc)
mm=$(echo "scale=2; ${medida} * 1000" | bc)
dam=$(echo "scale=3; ${medida} / 10"  | bc)
hm=$(echo "scale=3; ${medida} / 100"  | bc)
km=$(echo "scale=4; ${medida} / 1000" | bc)

echo "${medida}M -> ${dm}dm"
echo "${medida}M -> ${cm}cm"
echo "${medida}M -> ${mm}mm"
echo "${medida}M -> ${dam}dam"
echo "${medida}M -> ${hm}hm"
echo "${medida}M -> ${km}km"
