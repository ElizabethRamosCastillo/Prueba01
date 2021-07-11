Programando con R
================
Milagros Miguel Jurado, Elizabeth Ramos Castillo,Deysi Condor Melo,Jose
Ceras , Beto Lara
26/6/2021

# Ejercicios

## Parte 1

Cargar las variables almacenadas en el archivo
[Rdata](ei1012-1516-la-s1-datos.RData)

**1. Calcular los valores numéricos aproximados de:**

**a)** $\\frac{0.3.0.15}{0.3.0.15+0.2.0.8+0.5.0.12}$

``` r
a<-0.3*0.15/((0.13*0.15)+(0.2*0.8)+(0.5*0.12))
a
```

    ## [1] 0.1878914

**b)** $\\frac{5^6}{6!}= e^-5$

``` r
b<-(5**6/(factorial(6)))*exp(-5)
b
```

    ## [1] 0.1462228

**c)** $\\binom{20}{7} 0.4^0.7^ 0.6^13^$

``` r
c<- (factorial(20)/(factorial(7)*factorial(20-7)))*(0.4**7)*(0.6**13)
c
```

    ## [1] 0.1658823

**2. Realizar la siguiente suma**

**a)** *1+2+3+…+1000*

``` r
Suma_naturales<-function(sn){
  sn*(sn+1)/2
}
Suma_naturales(1000)
```

    ## [1] 500500

**b)** *1+2+4+8+…+1024*

``` r
nt<-(log(1024/1)/log(2))+1
suma_pg<-function(an,r,a1){
  ((an*r)-a1)/(r-1)
}
suma_pg(1024,2,1)
```

    ## [1] 2047

**3. El vector grupo representa el `grupo` al que pertenece una serie de
alumnos**

**a)** **¿Cuántos elementos tiene?**

``` r
length(grupo)
```

    ## [1] 192

*b)* **¿En qué posiciones del vector está la letra “A”?**

``` r
which(grupo=="A")
```

    ##  [1]   2   8  17  21  28  84 101 108 111 115 123 136 190 192

**4. El vector nota representa la `nota` de un examen de los alumnos que
están en los grupos del vector `grupo`.**

**a)** *¿Cuanto suman todas las notas?*

``` r
sum(nota)
```

    ## [1] 962

*b)* **¿Cual es la media aritmética de todas las notas?**

``` r
mean(nota)
```

    ## [1] 5.010417

*c)* *¿En qué posiciones están las notas mayores de 7.0?*

``` r
which(nota>7)
```

    ## [1]  81 103 120 151

*d)* ***Visualiza las notas ordenadas de mayor a menor***

``` r
sort(nota,decreasing = T)
```

    ##   [1] 7.7 7.5 7.4 7.2 7.0 6.9 6.9 6.8 6.8 6.8 6.8 6.8 6.6 6.5 6.4 6.4 6.4 6.4
    ##  [19] 6.3 6.2 6.2 6.2 6.2 6.2 6.2 6.1 6.1 6.1 6.1 6.0 6.0 6.0 6.0 6.0 6.0 5.9
    ##  [37] 5.9 5.9 5.9 5.9 5.9 5.9 5.9 5.9 5.8 5.8 5.8 5.8 5.8 5.7 5.7 5.7 5.7 5.7
    ##  [55] 5.6 5.6 5.6 5.6 5.6 5.6 5.5 5.5 5.5 5.5 5.5 5.5 5.5 5.5 5.5 5.5 5.5 5.5
    ##  [73] 5.5 5.4 5.4 5.4 5.4 5.4 5.4 5.4 5.4 5.3 5.3 5.3 5.3 5.2 5.2 5.2 5.2 5.2
    ##  [91] 5.2 5.2 5.1 5.0 5.0 5.0 5.0 5.0 5.0 5.0 5.0 5.0 4.9 4.9 4.9 4.9 4.9 4.9
    ## [109] 4.8 4.8 4.8 4.8 4.8 4.8 4.7 4.7 4.7 4.7 4.7 4.7 4.7 4.7 4.7 4.7 4.6 4.6
    ## [127] 4.6 4.6 4.5 4.5 4.5 4.5 4.5 4.5 4.4 4.4 4.4 4.4 4.4 4.4 4.4 4.3 4.3 4.3
    ## [145] 4.2 4.2 4.2 4.2 4.2 4.2 4.2 4.2 4.1 4.1 4.1 4.1 4.1 4.0 4.0 4.0 4.0 4.0
    ## [163] 4.0 3.9 3.9 3.8 3.8 3.8 3.7 3.7 3.7 3.7 3.6 3.6 3.6 3.5 3.4 3.4 3.4 3.4
    ## [181] 3.2 3.2 3.2 3.1 3.0 2.9 2.9 2.9 2.7 2.6 2.5 1.7

*e)* ***¿En qué posición está la nota máxima?***

``` r
which(nota==max(nota))
```

    ## [1] 120

### 14.

-   Lee el archivo `rainfall.csv` como un `data.frame`

``` r
data_R<-read.csv("E:/Clases 9vo/Progra R/rainfall.csv")
head(data_R)
```

    ##      num altitude sep oct nov dec jan feb mar apr may              name
    ## 1 110050       30 1.2  33  90 117 135 102  61  20 6.7 Kfar Rosh Hanikra
    ## 2 110351       35 2.3  34  86 121 144 106  62  23 4.5              Saar
    ## 3 110502       20 2.7  29  89 131 158 109  62  24 3.8             Evron
    ## 4 111001       10 2.9  32  91 137 152 113  61  21 4.8       Kfar Masrik
    ## 5 111650       25 1.0  27  78 128 136 108  59  21 4.7     Kfar Hamakabi
    ## 6 120202        5 1.5  27  80 127 136  95  49  19 2.7        Haifa Port
    ##      x_utm   y_utm
    ## 1 696533.1 3660837
    ## 2 697119.1 3656748
    ## 3 696509.3 3652434
    ## 4 696541.7 3641332
    ## 5 697875.3 3630156
    ## 6 687006.2 3633330

-   Calcula e imprime un vector con los nombres de las estaciones donde
    al menos uno de los meses tiene una precipitación superior a 180mm

``` r
library(tidyr)
r_ga<-gather(data = data_R, key = "Meses", value = "precipitacion", 3:11)
head(r_ga)
```

    ##      num altitude              name    x_utm   y_utm Meses precipitacion
    ## 1 110050       30 Kfar Rosh Hanikra 696533.1 3660837   sep           1.2
    ## 2 110351       35              Saar 697119.1 3656748   sep           2.3
    ## 3 110502       20             Evron 696509.3 3652434   sep           2.7
    ## 4 111001       10       Kfar Masrik 696541.7 3641332   sep           2.9
    ## 5 111650       25     Kfar Hamakabi 697875.3 3630156   sep           1.0
    ## 6 120202        5        Haifa Port 687006.2 3633330   sep           1.5

Se uso el paquete `tidyr`, que contiene una serie de funciones que
permiten ordenar la estructura de una base de datos. Para mayor
información visitar el link <http://www.jstatsoft.org/v59/i10/paper> La
funcion `gather` une varios columnas de acuerdo a un valor determinado,
parametro o key

``` r
library(dplyr)
```

``` r
r_f<-filter(r_ga,precipitacion >180)
r_f
```

    ##        num altitude       name    x_utm   y_utm Meses precipitacion
    ## 1   212168      825   Horashim 717491.2 3648872   dec           202
    ## 2  2496029      940 Golan Farm 761589.2 3669108   jan           201
    ## 3   210748      300      Eilon 706938.1 3660756   jan           201
    ## 4   210902      600    Fasutta 715879.5 3658943   jan           205
    ## 5   211350      380     Yehiam 708299.6 3653081   jan           204
    ## 6   211415      480 Kfar Mahol 716009.6 3652743   jan           209
    ## 7   211600      680      Meron 727711.5 3652888   jan           220
    ## 8   212168      825   Horashim 717491.2 3648872   jan           238
    ## 9  2496029      940 Golan Farm 761589.2 3669108   feb           196
    ## 10  211415      480 Kfar Mahol 716009.6 3652743   feb           183
    ## 11  211600      680      Meron 727711.5 3652888   feb           192
    ## 12  212168      825   Horashim 717491.2 3648872   feb           190
