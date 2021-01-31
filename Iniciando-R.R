setwd("C:/FCD/RAzure/Cap2")
getwd()

#Criando um vetor de numeros inteiros
vetor1 <- c(1:30)
vetor1

#Criando uma matriz e definindo o numero de colunas como 4
mat <- matrix(1:16, ncol = 4)
mat

#Criando uma lista
lista <- list(Matriz = mat, Vetor = vetor1)
lista

#Criando um dataset a partir de um texto

df <- data.frame(read.table(header = TRUE, text = "Country  setting  effort  change
Bolivia       46       0        1
Brazil        74       0       10
Chile         89      16       29
Colombia      77      16       25
CostaRica     84      21       29
Cuba          89      15       40
DominicanRep  68      14       21
Ecuador       70       6        0
ElSalvador    60      13       13
Guatemala     55       9        4
Haiti         35       3        0
Honduras      51       7        7
Jamaica       87      23       21
Mexico        83       4        9
Nicaragua     68       0        7
Panama        84      19       22
Paraguay      74       3        6
Peru          73       0        2
TrinidadTobago 84      15       29
Venezuela     91       7       11"))

View(df)

#Nomeando o data frame

names(df) <- c("", "config", "esfc", "chang")

df

#Visualisando um DataFrame (A função View é com V maiusculo)
View(iris)

#Visualisando as dimensões do DF
nrow(iris)
ncol(iris)
dim(iris)

#Resumo do DF
head(iris)

#Resumo estatistico
summary(iris)

#pegando 2 valores aleatorios do df
aleatorios <- iris[sample(nrow(iris), 2), ]
aleatorios

#criando um plot do dataset
plot(iris$Sepal.Length, iris$Petal.Length)


#criando um novo dataset com dados do iris filtrados

irisFrame <- iris["Sepal.Length" > 7]
irisFrame2 <- subset(iris, Sepal.Length < 5)

#Usando a função slice do dplyr
#instalando e carregando o pacote
install.packages("dplyr")
library(dplyr)

#realizando o slice e buscando as 7 primeiras linhas
slice(iris, 1:7)

#filtrando o dataset
filter(iris, Sepal.Length < 5)