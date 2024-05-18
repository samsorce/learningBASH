# converta uma temperatura digitada em ºC e converta para ºF

read -p "Informe a temperatura em C: " c
f=$( echo "scale=2; ((9*${c})/5)+32" | bc )

echo "A temperatura de ${c}Cº corresponde a ${f}ºF!"
