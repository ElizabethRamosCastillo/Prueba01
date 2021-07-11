print("Hello world")
#VECTORES

obj <- c(5, 2, 6, 58, 456, 56, 5)
c(5, 2, 6, 58, 456, 56, 5) -> obj
vector01 <- c(1, 2, 4, 7, 10, 11, 12, 19, 26)
vector02 <- c(1, 2, 4, 7, 10, 11, 12, 19, 30, NA)
vector03 <- c("jorge", "roy", "daniel", "cesar", "patin", 254, 265)
vector01[5] # indexar vectores
a <- vector01[4] # evaluar la naturaleza del vector
is.vector(a)
is.numeric(a)
is.integer(a)
length(vector01) # operaciones con vectores
(vector01 * 2) + 500
sum(vector01)
sum(vector02, na.rm = TRUE)
sqrt(vector01 - 1) 
sqrt(vector01)-1
sqrt(vector01) #raíz cuadrada
vector01 + (vector02 * 2)
1:20 #Secuencias numéricas
15:1
seq(0, 21)
0:21
seq(0, 21, by = 3)
seq(0, 21, length = 20)


#FACTORES
vect01 <- c("Dec", "Apr", "Jam", "Mar", "Jan", "Mar")
sort(vect02) #Orden alfabético
month_levels <- month.abb
factor01 <- factor(vect01, levels = month_levels)
sort(factor01)
readr::parse_factor(vect02, levels = month_levels) #advertencia
month.abb
month.name
factor(vect01)
class(factor(vect01))
factor(vect01, levels = unique(vect01))
forcats::fct_inorder(factor(vect01))

#MATRIX
vector01 <- c(1, 2, 4, 7, 10, 11, 12, 19, 26)
dim(vector01)
dim(vector01) <- c(3, 3)
class(vector01)
matrix01 <- matrix(vector01, nrow = 3, ncol = 3, byrow = T)
arboles <- c("Tipuana tipu", "Myrsine andina", "Salix humboldtiana")
matrix02 <- cbind(arboles, matrix01) # adicionar una columna nueva, juntar por columna
matrix02 <- cbind(arboles, matrix01, arboles)
matrix03 <- rbind(arboles, matrix01) # adicionar una fila nueva, juntar por fila
matrix03 <- rbind(arboles, matrix01, arboles)
dim(matrix02)
rownames(matrix02)
colnames(matrix02)
colnames(matrix02) <- c("arboles1", "numero1", "numero2", "numero3", "arboles2")
matrix02[1:3, 5]
matrix02[1:2, 4:5]
matrix02[3, c(1,4)]
t(matrix02)

#DATAFRAME
df01 <- data.frame(arboles, matrix01, arboles)
class(df01)
names(df01) <- c("nombre_cientifico", "circunferencia", "diametro_copa", "altura", "nc" )
str(df01)


#CONJUNTO DE DATOS EN R
str(iris)
head(iris)
iris[, "Species"]
iris[1:15, 1:4]
iris$Petal.Length
iris$Species
head(iris[iris$Species == "setosa", ])
head(iris[iris[, "Sepal.Width"] <= 3 & iris[, "Species"] == "setosa", ])
head(iris[iris$Sepal.Width <= 3 & iris$Species == "setosa",])

#SUBSETTING
subset(iris, Sepal.Width <= 3 & Species == "setosa")

#LISTA
coordenadas <- list(10, 15)
coordenadas <- list(x = 10, y = 15)
point <- list(id = 123, coord = coordenadas, spatial.reference = "WGS_84")
point$coord #acceder a sus elementos
point[3] #acceder a sus elementos
class(point[3])
class(point)
point[[3]] 
class(point[[3]])

#CSV
library(tidyverse)

#PROGRAMANDO CON R
x <- c(2, 3, 4, 15)
1 %in% c(1, 2, 3, 4) 
1 %in% c(2, 3, 4)
c(3,4,5,6) %in% c(2, 3, 4) 
x > 2 & x < 9
x > 2 | x < 9
!xor(x > 2, x < 9)
!x>2
any(x > 50, x < 1)
all(x >= 2, x < 16)

#Control de flujo
y <- if (x) 3
library(Hmisc)
1 %nin% c(1, 2, 3, 4) 

#Condicionales
x <- -8
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
valsuelo <- suelo[1]
if (valtemp %in% 12:22 & valsuelo == "seco") {
  print("\nCielo despejado")
} else if (valtemp == 22 | valsuelo == "humedo") {
  print("\nlluvia leve")
} else if (valtemp > 22 & valsuelo == "charcos") {
  print("\nlluvia severa")
} else {
  print("\nFaltan datos")
}



ifelse(NA,1,2)
ifelse(TRUE,1,2)


frutas <- c("Apple", "Orange", "Passion fruit", "Banana")
for (i in frutas) {
  print(i)
}

m <- 1:10

for (i in m) {
  print(i)
}



inicio <- 1
while (inicio <= 5) {
  cat("Este es el ciclo número ", inicio)
  inicio <- inicio + 1
  print(inicio)
}


x <- 1:5
for (val in x) {
  if (val == 3){
    break
  }
  print(val)
}


x <- 1:5
for (val in x) {
  if (val == 3){
    next
  }
  print(val)
}

#FUNCION
a <- 5
b <- 6
suma <- function(valor1, valor2) {
  resultado <- valor1 + valor2
  return(resultado)
}
suma(a, b)
#

require(stats)
centre <- function (x, type) {
  switch (type,
    mean = mean(x),
    median = median(x),
    trimmed = mean(x, trim = .1))
}
x <- rcauchy(30)
centre (x, "mean")
centre (x, "median")
centre (x, "trimmed")
hist(x)


