print("hola")
obj <- 5

rm(list=ls())

obj <- c(5, 2, 6, 58, 456, 56, 5)

setwd("Apowersoft/Apowersoft Online Screen Recorder/")

vector01 <- c(1, 2, 4,  7, 10, 11, 12, 19, 26)
dim(vector01) <- c(3,3)
class(vector01)
vector01


==     !=
  
  pi:10
10:15

if (!require("pacman")) {
  install.packages("pacman")
}
pacman::p_load(
  rgdal
)


iris
head(iris)

month_leves
month.abb

arboles <- c("Tipuana tipu", "Myrsine andina", "Salix humboldtiana")
vector01 <- c(1, 2, 4, 7, 10, 11, 12, 19, 26)
matrix01 <- matrix(vector01, nrow = 3, ncol = 3, byrow = T)
matrix02 <- cbind(arboles, matrix01)
matrix03 <- rbind(arboles, matrix01)
matrix04 <- cbind(matrix01, arboles)
class(arboles)

vector7 <- c(5,1,8,5,78,2.5)
vector[2:5]
1:10

x <- c(1, 2, 3)
dim(x) <- c(1,3)
colnames(x) <- c("one", "two", "three")

v <- c(0, 0, 1, 1)
class(v)
is.integer(v)

x <- matrix(1:4, nrow = 2)


df <-data.frame( x = c(1, 2, 3), y = c("one","two","three"))
data.frame(df)
df[3,1]


factor01 <- factor(c("Dic","Aug","Jun"))
sort(factor01)

x <- "F"
if (x== "A") {
  y <- 1
} else if (x== F) {
  y <- 5
}else {
  y <- 10
}

y


vector01 <- c(2:5)


x <- c(1, 2, 3, 4)
!9
  

x <- -5
if (x < 0) {
  print("Numero negativo")
} else if (x > 0) {
  print("Numero positivo")
} else {
  print("Cero")
}

temp <- c(15, 22, 30)
suelo <- c("seco", "humedo", "charcos")
valtemp <- temp[3]
valsuelo <- suelo[3]
if (valtemp %in% 12:22 & valsuelo == "seco") {
  print("\nCielo despejado")
} else if (valtemp == 22 | valsuelo == "humedo") {
  print("\nlluvia leve")
} else if (valtemp > 22 & valsuelo == "charcos") {
  print("\nlluvia severa")
} else {
  print("\nFaltan datos")
}


abc <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19)
2:9 %in% abc

ifelse
x <- c(6:-4)
sqrt(x)  #- gives warning
sqrt(ifelse(x >= 0, x, NA))  # no warning

## Note: the following also gives the warning !
ifelse(x >= 0, sqrt(x), NA)


#switch
require(stats)
centre <- function(x, type) {
  switch(type,
         mean = mean(x),
         median = median(x),
         trimmed = mean(x, trim = .1))
}
x <- rcauchy(30)
centre(x, "mean")
centre(x, "median")
centre(x, "trimmed")

hist(x)

#Bucles
inicio <- 1
# Creando el loop
while (inicio <= 20) {
  if (inicio %% 3 != 0 ){
  # Ver donde estamos
  print(inicio)
  }
  # Agregar 1 a la variable inicio despues de cada iteracion
  inicio <- inicio + 1
}

x <- 1:10
print(x)
cat(x)


class(iris)
str(iris)
iris$Species
as.tibble(iris)
library(tidyverse)



mycal <- function(x,y ){
  x <- as-numeric #Cuando está como caracter y quiero convertirlo a numérico
  num01 = x*y
  num02 = x+y
  return(num01+num02)
}

mycal(9)  #Como solo tiene un argumento, es obvio que es x
mycal(x = 9)


mycal(2, 3)  #Cuando no especifico, coge el mismo orden de arriba (primero x y luego y)

mycal( x= 2,  y= 3)

mycal( y = 2,  x= 3) #Cuando quiero colocar en otro orden tengo que especificar


x <- 1:10
paste("hola", "mundo")
paste("hola", "mundo", sep = "#")
paste0("hola", "mundo")
print("holamundo")
cat("holamundo")
cat(x)

x <- 1:5
for (val in x) {
  if (val == 3){
    break
  }
  print(val)
}

###

x <- 1:5
for (val in x) {
  if (val == 3){
    next
  }
  print(val)
}



#tryCatch

nums = list(12, 88, 39,"Ten", 51, 12)

div_by_5 = function(n){
  return(n/5)
}

#Trabaja Bien
div_by_5(nums[[1]])

#Error!
div_by_5(nums[[4]])

divided_out = sapply(nums, function(x){
  tryCatch(
    #Este es el fragmento que queremos correr
    {
      div_by_5(x)
      #
    }, error = function(msg){
      return(NA)
    })  
  })

divided_out


read.csv()

######################################################

mtx <- matrix(1:9, nrow = 3, ncol = 3, byrow = T)
apply(mtx, 1, sum)
apply(mtx, 2, sum)

head(df)

table(mtx)

tapply(mtx, index, function)

vapply(d[, c(12, 2:5)], mean, na.rm = T, c("Mean" = 0))
  
rm(list = ls())
library(tidyverse)
library(nycflights13)
library(magrittr)

pacman::p_load(magrittr)
flights
iris02 <- as_tibble(iris)
table(iris02$Species)
# proporción o % de cada grupo de table
prop.table(table(iris02$Species))
dplyr::filter(iris02, Petal.Length <= 6 & Petal.Length >= 5)
dplyr::filter(iris02, Petal.Length <= 5 & Sepal.Width >= 3)
dplyr::filter(iris02, Petal.Length <= 5 | Sepal.Width >= 3)     

vector01 <- c(sum(1:10), 12)
vector01 <- sum(vector01)
vector01 %<>% sum() #Para usar este operador tengo que instalar magrittr
#Como vemos, ya no es necesario hacer nuevamente la asignación de objetos con suma
#Es decir, me sobreescribe defrente

pacman::p_load(Hmisc)
library(Hmisc)
dplyr::filter(flights, !(month %nin% c(1, 2)))

ppDay<- read.csv("https://raw.githubusercontent.com/ryali93/ProgramacionR/master/data/raingaugeDataset.csv", sep = ",")
head(ppDay)
as_tibble(ppDay)
dplyr::filter(ppDay, !is.na(qc00000132 ))

library(tidyverse)
