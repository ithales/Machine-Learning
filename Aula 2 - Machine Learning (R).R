# Machine Learning
# Izabela Hendrix
# Data Science
# Aula 02
# Prof. Neylson
# Igor Thales 
# Vamos investigar as correlações entres as variaveis
#Sepal.Length e Petal.Length do banco
# de dados iris

# carregar dados embutidos no R
data("iris")

# verifica os primeiros casos
head(iris)

# Tirando algumas estatiscas descritivas
summary(iris$Sepal.Length)

summary(iris$Petal.Length)

# para elaborar um grafico de dispersao com as variaveis de interesse
plot(x= iris$Sepal.Length, y=iris$Petal.Length)

cor(x= iris$Sepal.Length, y = iris$Petal.Length)  ## nivel de correlação entre
#duas variaveis


##### Montando um modelo de regressão linear
reg = lm(Petal.Length ~ Sepal.Length,
         data = iris)
reg
summary(reg)

# plotando a reta de regressão usando o pacote 
## ggplot2
install.packages("ggplot2")

#Carregar o pacote de ggplot2

library(ggplot2)
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length)) + 
  geom_point() + 
  stat_smooth(method = "lm")

