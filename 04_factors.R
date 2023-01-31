# Ordered and unordered factors

# Amostra de trinta auditores fiscais de todos os estados da Austrália
# O estado de cada contador é guardado no vetor "state".

state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa",
           "qld", "vic", "nsw", "vic", "qld", "qld", "sa", "tas",
           "sa", "nt", "wa", "vic", "qld", "nsw", "nsw", "wa",
           "sa", "act", "nsw", "vic", "vic", "act")


# Pode ser criado um fator (factor), a partir desse vetor.

statef <- factor(state)
statef

# levels são as categorias presentes na variável

levels(statef)

# A renda de cada auditor

incomes <- c(60, 49, 40, 61, 64, 60, 59, 54, 62, 69, 70, 42, 56,
             61, 61, 61, 58, 51, 48, 65, 49, 49, 41, 48, 52, 46,
             59, 46, 58, 43)

# Para calcular a renda média de cada estado, podemos usar a função tapply()
# Essa função aplica uma função qualquer a todos os levels
incmeans <- tapply(incomes, statef, mean)
incmeans

# tapply(group_of_components, factor_to_take_levels, function())
tapply(incomes, statef, median)


# Podemos escrever uma função para calcular o erro padrão para qualquer vetor.
stdError <- function(x) sqrt(var(x)/length(x))
tapply(incomes, statef, stdError)

# Às vezes os levels terão uma ordem natural que queremos registrar
# e queremos que nossa análise estatística use isso.
# A função ordered() cria fatores ordenados, mas em todo o resto 
# é semelhante a factor(). 

# Os levels serão ordenados, não os componentes dos fatores.

state_ordered <- ordered(state)
state_ordered