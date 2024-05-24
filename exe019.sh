# Um professor quer sortear um dos seus quatro alunos para apagar o quadro. Faça um programa
# que ajude ele, lendo o nome deles e escrevendo o nome do escolhido

read -p "Primeiro nome de quatro alunos: " alunos
# aluno=$( echo ${alunos} | sed -e 's/\ /,/g' | sed -e 's/\([A-Za-z]*\)/"\1"/g' | sed -e 's/^./\["/g' | sed -e 's/$/\]/g' )
declare -i cont=0
declare -a aluno


for x in ${alunos}; do
#       echo ${x} '-->' ${cont}
        aluno[${cont}]=${x}
        (( cont += 1 ))
done

echo "Elemento de aluno: "  ${aluno[@]}
echo "Total de elementos: " ${#aluno[@]}


var=$(shuf -i 0-${#aluno[@]} -n 1)

echo "Aluno sorteado para apgar o quadro é: ${aluno[var]}"

