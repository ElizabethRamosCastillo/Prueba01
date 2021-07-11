### PARTE 1 ----

##1. Calcula los valores numéricos aproximados ----

#a
a <- c((0.3*0.15)/(0.3*0.15+0.2*0.8+0.5*0.12))
m <- 0.3
n <- 0.15
o <- 0.2
p <- 0.8
q <- 0.5
r <- 0.12
a <- function(m, n, o, p, q, r) {
  resultado <- ( (m * n) /( m * n + o * p + q * r ) )
  return(resultado)
}
  
#b
res <- (((5^6)/factorial(6))*exp(-5))
b <- 5
c <- 6
operacion <- function(b, c)  {
  pot <- b^c
  fact <- factorial(c)
  e <- exp(-b)
  resultado <- (pot/fact)*e
  return(resultado)
}
operacion(b, c)
  
#c
n <- 20
r <- 7
c <- 0.4
d <- 0.6
e <- 13
resp_c <- function(n, r, c, d, e) {
  comb <- (factorial(n)/(factorial(r)*factorial(n-r)))
  multip <- comb*(c^r)*(d^e)
  return(multip)
}
resp_c(n, r, c, d, e)
  
  
## 2. Realizar la siguiente suma ----

#a
x <- 1
y <- 1000
suma <- function(x, y) {
  sumatoria <- (y*(y+1)/2)
  return(sumatoria)
}
suma(x, y)

m <- seq(1, 1000)
sum(m)

#b

n <- 10
suma <- function(n) {
  sumatoria <- ((1-((2)^(n+1)))/(1-2))
  return(sumatoria)
}
  suma(n)
  
a1 <- 1
an <- 1024
r <- 2
  suma <- function(a1, an, r) {
    sumatoria <- ((an*r-a1)/(r-1))
    return(sumatoria)
  }
suma(a1, an, r) 
  
## 3. El vector grupo representa el grupo al que pertenece una serie de alumnos ----

archivo <- load("C:/Users/jacqu/Downloads/ei1012-1516-la-s1-datos.RData")
head(archivo)
archivo
class(archivo)
str(archivo)
ncil
grupo

# a. ¿Cuántos elementos tiene?
length(grupo)

# b. ¿En qué posiciones del vector está la letra “A”?
which( grupo == "A" )


## 4. El vector nota representa la nota de un examen de los alumnos que están en ----
## los grupos del vector grupo.

nota
length(nota)

# a. ¿Cuánto suman todas las notas?
sum(nota)

#b. ¿Cuál es la media aritmética de todas las notas?
mean(nota)

# c. ¿En qué posiciones están las notas mayores de 7.0?
which( nota > 7)

# d. Visualiza las notas ordenadas de mayor a menor
sort(nota)
a <- max(nota)
b <- min(nota)
a:b

rev(sort(nota))

# e. ¿En qué posición está la nota máxima?
which( nota == max(nota))

## 5. A partir de los vectores grupo y nota definidos.----

# a. Suma las notas de los 10 primeros alumnos del vector

numbers <- nota[1:10]
sum(numbers)

# b. ¿Cuántos alumnos hay del grupo C?
which( grupo == "C") 
length(which( grupo == "C") )

length(grupo[grupo=="C"])

# c. ¿Cuántos alumnos han aprobado?
# Aprobado >= 5.5
length(which(nota >= 5.5)) 

# d. ¿Cuántos alumnos del grupo B han aprobado?
which( grupo == "B" )
notasB <- nota [which( grupo == "B" )] # notas de los alumnos del grupo B
which(notasB >= 5.5)
length(which(notasB >= 5.5))

df <- data.frame(grupo, nota)
df02 <- filter(df, grupo == "B", nota >= 5.5)
nrow(df02)


# e. ¿Qué porcentaje de alumnos del grupo C han aprobado?

which( grupo == "C" )
notasC <- nota [which( grupo == "C" )] # notas de los alumnos del grupo C
which(notasB >= 5.5)
NaprobadosC <- length(which(notasB >= 5.5)) # Nº alumnos C aprobados
TotalC <- length(which( grupo == "C") ) # Nº total alumnos C
porc <- (aprobadosC/TotalC)*100
print(porc)

A<- filter(df, grupo == "C", nota >= 5.5)
B <- nrow(A)
TotalC <- length(which( grupo == "C") )
(B/TotalC)*100


# f. ¿De qué grupos son la máxima y m�nima notas de toda la muestra?
notasA <- nota [which( grupo == "A" )] # notas de los alumnos del grupo A
notasB <- nota [which( grupo == "B" )] # notas de los alumnos del grupo A
notasC <- nota [which( grupo == "C" )] # notas de los alumnos del grupo C
notasD <- nota [which( grupo == "D" )] # notas de los alumnos del grupo D
notasE <- nota [which( grupo == "E" )] # notas de los alumnos del grupo E

TotalA <- length(which( grupo == "A") ) # Nº total alumnos A
TotalB <- length(which( grupo == "B") ) # Nº total alumnos B
TotalC <- length(which( grupo == "C") ) # Nº total alumnos C
TotalD <- length(which( grupo == "D") ) # Nº total alumnos D
TotalE <- length(which( grupo == "E") ) # Nº total alumnos E

max(nota)
maxA <- max(notasA)
maxB <- max(notasB)
maxC <- max(notasC)
maxD <- max(notasD)
maxE <- max(notasE)
min(nota)
minA <- min(notasA)
minB <- min(notasB)
minC <- min(notasC)
minD <- min(notasD)
minE <- min(notasE)

max(nota) %in% maxA
max(nota) %in% maxB
max(nota) %in% maxC
max(nota) %in% maxD
max(nota) %in% maxE

min(nota) %in% minA
min(nota) %in% minB
min(nota) %in% minC
min(nota) %in% minD
min(nota) %in% minE

# g. Nota media de los alumnos de grupo A y B, juntos, considerando sólo a los que 
# han aprobado.

notasA <- nota [which(grupo == "A")] # notas de los alumnos del grupo A
AprobadasA <- notasA[which(notasA >= 5.5)] # Notas aprobadas de A

notasB <- nota [which(grupo == "B")] # notas de los alumnos del grupo B
AprobadasB <- notasB[which(notasB >= 5.5)] # Notas aprobadas de B

c <- c(AprobadasA, AprobadasB)

mean(c)

## 6. Calcula el percentil 66 de las notas de todos los alumnos, y también de ----
## los alumnos del grupo C.

quantile(nota, .66)

TotalC <- length(which( grupo == "C") ) # Nº total alumnos C
quantile(TotalC, 0.66)

#revisar
df <- data.frame(grupo, nota)
perc <- df$nota
quantile(perc, .66)

#b Aumnos del grupo C

GC <- filter(df02, grupo == "C")
GC
perc2 <- GC$nota
quantile(perc2, .66)

## 7. Un alumno tiene una nota de 4.9. ¿Qué porcentaje, del total de alumnos, ----
## tiene una nota menor o igual que la suya? ¿Y qué porcentaje tiene una nota 
## mayor o igual que la suya?

#revisar
c = 4.9 

table (nota <= c )
(c/90)*100

table (nota >= c )
(c/108)*100







## 8. Realiza el gráfico de diagramas de caja de las notas de cada grupo, para 
## poder comparar el nivel de cada uno de ellos.

notasA <- nota [which(grupo == "A")] # notas de los alumnos del grupo A
notasB <- nota [which(grupo == "B")] # notas de los alumnos del grupo B
notasC <- nota [which(grupo == "C")] # notas de los alumnos del grupo C
notasD <- nota [which(grupo == "D")] # notas de los alumnos del grupo D
notasE <- nota [which(grupo == "E")] # notas de los alumnos del grupo E
boxplot(notasA, notasB, notasC, notasD, notasD)

#boxplot(`Notas` ~ `Grupo`,gn,col = palette(rainbow(2)))


## 9. Si la variable conc recoge la concentración de plomo (en ppm) en el aire 
## de cierta zona durante un dia completo

load("D:/GEOGRAPHICAL_ENGINEERING/CICLO_IX/R_PROGRAMACI�N_II/Datos/RData_ParteI/ei1012-1516-la-s1-datos.RData")
conc

# a. �Cu�l ha sido la concentraci�n m�xima?
max(conc)

# b. �En cu�ntos de los muestreos se ha superado la concentraci�n de 40.0 ppm?
length(which(conc > 40))

# c. �Cu�l ha sido la concentraci�n media del d�a?
mean(conc)

# d. �Cu�les fueron las 10 mediciones m�s bajas del d�a?

orden <- sort(conc)
orden[1:10]

# e. Si la primera medida fue a las 00:00. �A qu� hora del d�a se alcanz� la 
# concentraci�n m�xima?

length(conc)
which( conc == max(conc))

3600/288 #segundos

(3600/288)*(which( conc == max(conc))-1)


hora <- ((3600/288)*(which( conc == max(conc))-1))/3600 #hora


 
hora<-seq(as.POSIXct("00:00", format="%H:%M"),
          as.POSIXct("23:59", format="%H:%M"), by="5 min")
h_conc<-data.frame(hora=hora,Medida=conc)
h_conc[max(h_conc$Medida),]

h_conc %>% filter(Medida == max(Medida))
