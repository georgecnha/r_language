# Criando um vetor

assign("x", c(10.4, 5.6, 3.1, 6.4, 21.7))

#Atribui??es tamb?m podem ser feitas na dire??o oposta

c(10.4, 5.6, 3.1, 6.4, 21.7) -> y


# Atribui??o de vetores


a <- 'Jo?o'
b <- 'Maria'

nomes <- c(a,b)
nomes



# Vetores podem ser usados em express?es aritm?ticas
# Nesse caso, as opera??es s?o feitas elemento a elemento
# Vetores que aparecem na mesma express?o n?o precisam ter o mesmo tamanho.
# Se eles n?o tem o mesmo tamanho, o valor da express?o ter? o mesmo tamanho 
# do vetor mais longo.
# Vetores mais curtos s?o reciclados at? o tamanho do vetor 
# da express?o ser o mesmo do vetor mais longo.

t1 <- c(1,2,3)
t2 <- c(1,2)

exp <- t1 + t2
exp


# Comprimento do vetor

comprimento <- length(t1)
comprimento

# Duas fun??es estat?sticas s?o mean(x), a m?dia e sum(x).

media<-mean(t1)
media

somatorio<-sum(t1)
somatorio


# Vari?ncia amostral: var(x) 
# sum((x-mean(x))^2)/(length(x)-1)

variancia <- var(t1)
variancia

# Organizar itens: sort(x)
# Mais flex?veis order() ou sort.list()

t3 <- c(20,17,19,42)
ordenados <- sort(t3)
ordenados

# M?ximo e M?nimo.

maximo <- max(t3)
minimo <- min(t3)

# Raiz quadrada

raiz <- sqrt(25)
raiz

# SEQU?NCIAS

### de 2 a 10
seq1 <- seq(2,10)
seq1

seq(from=2, to=15)

### de 2 a 10, com passo 0.5

seq2 <- seq(2,10, by = 0.5)
seq2

### a partir de 2, com tamanho 15

seq3 <- seq (from=2, length= 15)
seq3

### A partir de -5, tamanho 51, passo .2

s4 <- seq(length=51, from=-5, by=.2)
s4


# A fun??o rep() pode ser usada para replicar um objeto 
# de v?rias formas.

t1 <- c(1,2,3)

### Copia o vetor inteiro 5 vezes.

s5 <- rep(t1, times=5)
s5

### Copia cada elemento do vetor 5 vezes.

s6 <- rep(t1, each=5)
s6



# VETORES L?GICOS

lista <- c(1,2,3,13,14,19,22,19)
maior13 <- lista>13
maior13

maior_igual13 <- lista >= 13
maior_igual13

menor_igual13 <- lista <= 13
menor_igual13

igual_13 <- lista == 13
igual_13

# MISSING VALUES

vetor_com_na <- c(1:4,NA, 7:9)
igual_na <- is.na(vetor_com_na)
igual_na

# NOT A NUMBER (NaN)
# is.na(xx) is TRUE both for NA and NaN values.
# is.nan(xx) is only TRUE for NaNs.


nao_numero = 0/0
nao_numero

is.na(0/0)
is.na(NA)
is.nan(NA)
is.nan(0/0)



# VETOR DE 1 A 3

s7 <- c(1:3)
s7




# REMOVENDO VARIAVEIS CRIADAS
rm(a, b, c, comprimento, d, exp, gaveta, igual_13, igual_na)
rm(lista, maior13, maior_igual13)
rm(maximo, minimo, menor_igual13, media, nao_numero)
rm(nomes, ordenados, raiz, s4, s5, s6, s7, s8)
rm(seq1, seq2, seq3)
rm(somatorio, variancia, media)
rm(t1, t2, t3, t4, v, vetor_com_na)
rm(vmax, vmin)
rm(x, y)



