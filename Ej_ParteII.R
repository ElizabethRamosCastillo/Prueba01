### PARTE 2

# 1  Graficar los puntos * en un plano
x<- c(1:10)
y <- c(1, 4, 6, 8, 25, 36, 49, 61, 81, 100)
plot(x, y)

# 2. Ingresar la matriz A 
vector01 <- seq(1, 4)
vector02 <- seq(2, 8, by = 2)
vector03 <- seq(3, 12, by = 3)
matrix0A <- cbind(vector01, vector02, vector03)
matrix0A

# 3.  Ingresar la matriz identidad de tamaño 3

vector0A <- c(1, 0, 0)
vector0B <- c(0, 1, 0)
vector0C <- c(0, 0, 1)
matrix01 <- cbind(vector0A, vector0B, vector0C)
matrix1 <- diag(3)

# 4. Crea una función que cree una matriz nula ingresando las dimensiones

vector01 <- c(0)
dim1 <- 5
dim2 <- 9
mat <- function(vector01, dim1, dim2 ) {
  resultado <- matrix(vector01, nrow = dim1, ncol = dim2, byrow = T)
  return(resultado)
}
mat(vector01, dim1, dim2 )


# 5. Modificar la matriz diag(4), para que se parezca a la matriz B
matrix0B <- diag(4)
matrix0B[1, 1] = 0
matrix0B[2, 2] = 2
matrix0B[3, 3] = 3
matrix0B[4, 4] = 4
matrix0B

# 6. Obtener la matriz transpuesta de A (ejercicio 2)
t(matrix0A)

# 7. Realizar las siguientes operaciones A + B, A- B, 3B y AB
matrix0A #calculado en la p2
matrix0B #calculado en la p5

matrix0A - matrix0B

matrix0B*3

# 8. Crea una función para calcular P6

vector0P <- c(1, 2, 3, -2, 4, -2, 1, 0, 1)
matrix0P <- matrix(vector0P, nrow = 3, ncol = 3, byrow = T)
func <- function(matrix0P) {
  resultfunc <- matrix0P^6
  return(resultfunc)
}
func(matrix0P)

# 9. Resolver el sistema de ecuaciones

A <- c(3, -1, 1, 9, -2, 1, 3, 1, -2)
mA <- matrix(A , nrow = 3, ncol= 3, byrow = T)

B <- c("x", "y", "z")
mB <- matrix(B , nrow = 3, ncol= 1, byrow = T)

C <- c(-1, -9, -9)
mC <- matrix(C , nrow = 3, ncol= 1, byrow = T)

D <- solve(mA, mC) 

row.names(D) <- c("x", "y", "z")
D


#(La función solve permite obtener la inversa de una matriz cuando sólo se la da 
#un argumento, y permite resolver sistemas de ecuaciones lineales cuando se le 
#dan dos argumentos)


# 10. Utilizando la ayuda de R, investigue para qué sirven las funciones 
# eigen() y det()

eigen(mA)
det(mA)

# 11. Considerando las matrices. Calcula A*B  .ABt

CB1 <- c(1:10)
CB2 <- seq(2, 20, by = 2)
CB3 <- seq(3, 30, by = 3)
CB4 <- seq(4, 40, by = 4)
CB5 <- seq(5, 50, by = 5)
matrixB <- cbind(CB1, CB2, CB3, CB4, CB5)

CA1 <- rep(0:1, 5)
ma <- matrix(CA1, nrow= 2, ncol = 5, byrow = T)
CA2 <- c(0, 1, 0, 1, 0)
CA3 <- c(0, 1, 0, 0, 1)
CA4 <- c(1, 0, 1, 1, 0)
matrixA <- rbind(ma, CA2, CA3, CA4)

# 12. 










# 13. Corre el siguiente código para cargar los vectores year y co2 en memoria
data(co2)
means = aggregate(co2, FUN=mean)
year = as.vector(time(means))
co2 = as.vector(means)


# CO2 en 1960 menos CO2 en 1959


class(co2)
co2("1959")

co2[3]

read.csv("D:/GEOGRAPHICAL_ENGINEERING/CICLO_IX/R_PROGRAMACIÓN_II/Datos")






