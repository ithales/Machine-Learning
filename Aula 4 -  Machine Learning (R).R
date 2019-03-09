# Machine Learning
# Izabela Hendrix
# Data Science
# Aula 04
### Aula 02 de R
# Prof. Neylson
# Igor Thales 

#Carregando as bibliotecas necessarias
install.packages("dplyr")

library(dplyr)

data("iris")
head(iris)

######select() - seleciona colunas
select(iris,1)

#retorna a coluna pelo nome
select(iris, Species)


#Retorna as colunas Species e Sepal.Length
select(iris, 2:4)

#########
# Filter() - filtra linhas (casos)
# de acordo com alguma condição que eu defino dentro da função

#Filtrar apenas a especie Versicolor
filter(iris, Species == "versicolor")

###filtrar todas especies exceto versicolor
filter(iris, Species != "versicolor")

###Checar a distribuição da variavel Sepal.Length
summary(iris$Sepal.Length)

### Filtra apenas os casos de Sepal.Length maior ou igual 7

filter(iris, Sepal.Length >= 7)

### Filtra apenas os casos de Sepal.Length menor 5
filter(iris, Sepal.Length < 5)
 &
# filtra Sepal.Length menor que 5 e apenas versicolor
filter(iris, Sepal.Length <5, Species == "versicolor")
 
# filtrar casos em que SEpal.Length  for menor que 4.5 ou maior que 7.2
filter(iris, Sepal.Length < 4.5 | Sepal.Length > 7.2)

# filtrar apenas os casos em que Sepal.Length for menor que 4.5 
#e Sepal.Width for menor ou igual a 3 
filter(iris, Sepal.Length < 4.5, Sepal.Width <=3 ) 

#######################
# arrange() - ordena as linhas

arrange(iris, Sepal.Length, Petal.Width)


### arrange ao invertido
arrange(iris, desc(Sepal.Length))

################

#realizar as mesmas tarefas usando o pipe. Sequencia de comandos 
iris %>% select(Species) %>% filter(Species != "virginica")

# filtrar os casos em que a variavel Sepal.Length for menor que 4.5 e selecionar
# as variaveis Petal.Length e Petal.Width
iris %>% 
  filter(Sepal.Length < 4.5) %>%  
  select(Petal.Length, Petal.Width) %>% 
  arrange(Petal.Length)



## Filtrar no banco de dados iris Sepal.Length for maior que 7 ou menor que 5
## selecionar Petal.Lenght e Special
## ordenar por Petal.Length descendente
iris %>% 
  filter(Sepal.Length > 7 | Sepal.Length < 5) %>% 
  select(Sepal.Length, Species) %>% 
  arrange(desc(Sepal.Length))
  

##############
# mutate90 =  cria novas colunas

#vamos criar uma nova variavel chamada PETAL
#somando o tamnho e largura da petala

iris %>% 
  mutate(PETAL = Petal.Length + Petal.Width) %>% 
  select(Petal.Length, Petal.Width, PETAL) %>% 
  


### Vamos criar uma nova variavel chamada med_tam com a media
## dos tamnhos (tamanho de petala e sepala).
# tenho que somar o tamanho da petala com o tamanho da sepala dividido por 2
iris %>% 
  mutate(med_tam = (Sepal.Length + Petal.Length) / 2) %>% 
  select(Sepal.Length, Petal.Length, med_tam) %>% 
  head
