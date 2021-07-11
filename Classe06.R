rm(list=ls())

paste()
paste0()
sprintf("hola %1$s Perú", 2010:2019) #revisar REGEX t.t
sprintf("hola %1$s Perú %2$s", 2010:2019, "add")
sprintf("%1$02d", 1:10) #Imprime números pero en caracter, con un 0 adelante   

version # para ver la versi�n de R




# %>% nos permite editar la anidacion de funciones. A partir de una version no 
#estan obligatorio porqeu tenemos el |>
library(pacman)
library(tidyverse)
library(nycflights13)
library(magrittr)
dplyr::filter(flights, month == 1, day == 1)
arrange(iris)
arrange(flights, desc(arr_delay)) #ordena de mayr a menor
# sin el desc ordena de menor a mayor

I<- as_tibble(iris)
#Select 
dplyr:: select(I, Sepal.Length, Petal.Length)
dplyr:: select(I, -Sepal.Length, -Petal.Length)
dplyr:: select(I, Sepal.Length: Petal.Length)
names(iris) #nombres de cada una de las variables
rename(flights, tail_num = tailnum) #para cambiar nombre de las variables, 
# primero se escribe el nuevo nombre, luego el nombre antiguo.

# names(aqui va eldataframe) <- c(los nuevos nombres) esto es para cambiar todo los nombres
# names(dataframe) [1:2]<- c(los nuevos nombres)
#names(dataframe) c(1, 4)<- c(los nuevos nombres)

seq(as.Date("2001-01-01"), as.Date("2001-12-31"), by = "2 month")
seq(
  as.POSIXct("2020-01-01 15:00"),
  as.POSIXct("2020-01-01 17:00"),
  by="10 min"
)


y <- c(1, 2, 2, NA, 3, 4)
min_rank(y)
desc(y)
min_rank(desc(y))




# pipeta control shifth M
x <- c(1:10)
y <- c(11:20)

sum(x) %>%  c(y)
c(sum(x), y)


sum(mean(max(min())))
min() %>% max() %>%  mean() %>% sum()

#cargar los datos
seq(ad.Date("1980-01-01 "), as.Date("2013-12-31"), by = "day") %>%  length()




data <- 
  read_csv("D:/GEOGRAPHICAL_ENGINEERING/CICLO_IX/R_PROGRAMACIÓN_II/Datos/ProgramacionR-master/data/raingaugeDataset.csv") %>% 
   dplyr::select(date, qc00000132) %>% 
   mutate(date = as.Date(date, format = "%d/%m/%Y"))


tail(data) # me arroja los últimos valores, contrario a head

