# Ler o comprimento do cateto oposto e do cateto adjacente de um triângulo retângulo,
# calcule e mostre o comprimento da hipotenusa


# print(f"comprimento da hipotenusa é: {hipo:.2f}")

read -p "Comprimento cateto oposto: "    cat_op
read -p "Comprimento cateto Adjacente: " cat_ad


# In bc, b must be an integer in a ^ b. However you can add your own functions to bc like this:
# create a file ~/.bcrc, add the following function to it:

# define pow(a, b) {
#    if (scale(b) == 0) {
#        return a ^ b;
#    }
#    return e(b*l(a));
# }
# then you can start bc as follows:
# bc ~/.bcrc -l
# so you can use function pow to do such calculation.


hipo=$( echo "scale=2; pow((${cat_op} ^ 2 + ${cat_ad} ^ 2), 0.5)" | bc ~/.bcrc -l)

echo "comprimento da hipotenusa é: ${hipo}"
