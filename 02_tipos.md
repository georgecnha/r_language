# Tipos em R

R tem seis tipos básicos de vetores: logical, integer, real, complex, string (ou character) e raw. Os modos e modos de armazenamento para os diferentes tipos de vetor são listados a seguir.

| typeof    | mode      | storage.mode |
| --------- | --------- | ------------ |
| logical   | logical   | logical      |
| integer   | numeric   | integer      |
| double    | numeric   | double       |
| complex   | complex   | complex      |
| character | character | character    |
| raw       | raw       | raw          |

Números individuais, como 4.2 e strings como "quatro ponto dois" ainda são vetores.

# Special compound objects

### Factors

Fatores são usados para descrever itens que podem ter um número finito de valores (gênero, classe social, etc.). Um fator tem um atributo de níveis e uma classe "fator". Opcionalmente, também pode conter um atributo de contrastes que controla a parametrização usada quando o fator é usado em funções de modelagem. Um fator pode ser puramente nominal ou pode ter categorias ordenadas. Neste último caso, deve ser definido como tal e ter um vetor de classe `c("ordered"," factor")` Os fatores são atualmente implementados usando uma matriz (array) de inteiros para especificar os níveis reais e uma segunda matriz de nomes que são mapeados para os inteiros. Infelizmente, os usuários costumam usar a implementação para facilitar alguns cálculos. Isso, no entanto, é um problema de implementação e não é garantido que ocorra em todas as implementações de R.

## Data frame objects

Dataframes são as estruturas R que mais se aproximam do conjunto de dados SAS ou SPSS, ou seja, uma matriz de dados “casos por variáveis”. Um Dataframe é uma lista de vetores, fatores e/ou matrizes (arrays), todos com o mesmo comprimento (número de linhas no caso de matrizes). Além disso, um quadro de dados geralmente tem um atributo de nomes que rotula as variáveis e um atributo row.names para rotular os casos. Um quadro de dados pode conter uma lista com o mesmo comprimento dos outros componentes. A lista pode conter elementos de comprimentos diferentes, fornecendo assim uma estrutura de dados para arrays irregulares.

# Atributos intrínsicos: *mode* e *length*

As entidades com as quais o R trabalha são conhecidas como _objetos_. Por exemplo, vetores de valores numéricos (reais), ou complexos, vetores de valores lógicos e vetores de caracteres. Estes são conhecidos como estruturas atômicas porque seus componentes eram todos do mesmo tipo, ou _modo_, ou seja _numeric_, _complex_, _logical_, _caracter_ e _raw_.

O modo _numeric_ é, na verdade, um amálgama de dois modos distintos, a saber: _integer_ e _double precision_, conforme explicado no manual.

Vetores devem ter todos os seus valores do mesmo modo. Assim, qualquer dado vetor deve ser inequivocamente lógico, numérico, complexo, caractere ou bruto. (A única exceção aparente a esta regra é o “valor” especial listado como NA para quantidades não disponíveis, mas na verdade existem vários tipos de NA). Observe que um vetor pode estar vazio e ainda ter um tipo (_mode_). Por exemplo, o vetor de sequência de caracteres vazio é listado como `character(0)` e o vetor numérico vazio como `numeric(0)`.

R também opera em objetos chamados listas, que são do modo _list_. Estas são sequências ordenadas de objetos que individualmente podem ser de qualquer modo. as listas são conhecidas como estruturas “recursivas” em vez de atômicas, pois seus componentes podem ser listas por si só.

As outras estruturas recursivas são as de _function_ e _expression_. As funções são os objetos que fazem parte do sistema R juntamente com funções semelhantes escritas pelo usuário. Expressões como objetos formam uma parte avançada de R que não será discutida neste guia, exceto indiretamente quando discutirmos fórmulas usadas com modelagem em R.

Por modo de um objeto entendemos o tipo básico de seus constituintes fundamentais. Este é um caso especial de uma “propriedade” de um objeto. Outra propriedade de todo objeto é seu comprimento. As funções `mode(object)` e `length(object)` podem ser usadas para descobrir o modo e comprimento de qualquer estrutura definida.
