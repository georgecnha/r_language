# Objects, their modes and attributes

# Intrinsic attributes: mode and length

# The entities R operates on are technically known as objects. 
# Examples are vectors of numeric (real) or complex values, 
# vectors of logical values and vectors of character strings. 
# These are known as “atomic” structures since their components 
# are all of the same type, or mode, namely numeric, complex, 
# logical, character and raw.


z <- 0:9
z 

# Casting

digits <- as.character(z)
digits

d <- as.integer(digits)
d

# As funções `mode(object)` e `length(object)` podem ser usadas
# para descobrir o modo e comprimento de qualquer estrutura 
# definida.

print(paste('Modo de z: ', mode(z)), quote= FALSE)
print(paste('Tamanho de z: ', length(z)), quote= FALSE)


# Mudando o comprimento de um objeto

# Um objeto vazio ainda pode ter um modo

e <- numeric()
e

# De maneira similar character() gera uma string vazia.


# Uma vez que um objeto de qualquer tamanho seja criado, novos componentes
# podem ser adicionados ao fornecer um valor de índice fora do 
# intervalo anterior


e[3] <- 17
e

# Inversamente para truncar o tamanho de um objeto é requerida
# apenas uma atribuição para fazê-lo.

alpha <- 1:10
alpha

# Portanto, se alpha é um objeto de comprimento 10, então

alpha <- alpha[2 * 1:5]
alpha

# torna um objeto de comprimento 5 consistindo apenas 
# nos componentes anteriores com índice par.

# Cada classe vai ter um plot diferente
# Cada classe vai ter um summary diferente


plot(alpha)
summary(alpha)
