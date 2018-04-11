#Aquí se esta realizando una asignación
x <- 1
x <- 2

#La asignación no me permitio visualizar el resultado, para ello debo realizar una asignacion
print(x)

#Al poner mayúscula, que no ha sido definida, me marcará error
print(X) 

#La alternativa es solicitar una impresion implicita
x

#La asignacion puede hacerse tambien de textos
msg <- "Hola"

#Al solicitar una impresion, me debera enseñar el mensaje
print(msg)

x <- #Expresion incompleta, para salir de ella pudes presionar Esc
  
  #Impresion de un arreglo
  x <- 1:20
print(x)
y <- 3:9
y
z <- 99:43
z
#El operador ":" me permite generar secuencias numericas de un principio a un fin
w <- 3:14.5
w
#En el caso de trabajar con decimales me genera secuencias hasta los enteros
1L
#Inf es infinito y NaN significa (Not a Number)

#R nos permite trabajar con conceptos matematicos "superiores" como los numeros complejos o el concepto de infinito
Inf
1/0
#Es posible hacer algunas operaciones con este valor
exp(-Inf) #0
Inf + Inf #Inf
Inf - Inf #NaN
Inf / Inf #NaN

#Cada objeto tiene sus propiedades o atributos
attributes(z)

#Es posible crear un vector con la funcion c()
x <- c(TRUE, FALSE, TRUE, TRUE, F, F, T) #Logical
x <- c(1L, 3L, 5L, -4L) #Integer
x <- c(1, 3, 5, -4) #Numeric
x <- c(1, 3, 5, -4, 3.27362763) #Numeric
x <- c(1+1i,2+4i ) #Complex
x <- c("a", "b", "Mundo") #Character

#Otro posible camino seria con la funcion vector
x <- vector("numeric", length = 10)
x
#El vector se crea vacio

#Coercion
y <- c(1.7, "a") #Character
y <- c(TRUE, 2L, 2) #Numeric
y <- c(FALSE, 2L, 5, 5+4i) #Complex

#Coercion forzada
x <- 0:6 #Integer
as.numeric(x) #Numeric
as.logical(x) #Logical - Los 0 se vuelven False y los demas True
as.character(x) #Character - Todo es texto

#Errores en la coercion forzada
x <- c("a", "b", "c")
as.numeric(x) 
as.logical(x) 
as.complex(x)
#Aparecera NA porque esa coercion no es posible

#Este si esta en la carpeta

#Clase del 26/2/2018..................................................................
#Listas

x <- list(1, "a", TRUE, 3+2i,5L)
x
#Todos los elementos de una lista mantienen la clase
x <- list(1, "a", TRUE, 3+2i,5L, 1:50)
x

#Matrices
m <- matrix(nrow = 2, ncol = 3)
m <- matrix(NA, 2, 3)
m
dim(m)
attributes(m)

#Como llenar una matriz
m <- matrix(data = 1:6, nrow = 2, ncol = 3)
m <- matrix(1:6, 2, 3)
m
#La manera automatica de llenarse fue columna por columna
#Si yo quisiera que se llenara fila por fila seria:
m <- matrix(data = 1:6, nrow = 2, ncol = 3, byrow = TRUE)
m <- matrix(1:6, 2, 3,T)
m

#Una manera alternativa de crear una matriz es desde un vector y modificar su dimension
m <- 1:10
m
dim(m) <- c(2,5)
m


#Otra forma de crear una matriz es uniendo diferentes vectores
x <- 1:3
y <- 10:12
#CBind, unir columnas
cbind(x,y)
rbind(x,y)

#Factores
x <- factor(c("Si", "Si", "No", "No", "Si"))
x

#Factores por orden alfabético
x <- factor(c("Azul", "Verde", "Verde", "Azul", "Rojo"))
x

table(x)
unclass(x)

#Factores con orden definido
x <- factor(c("Azul", "Verde", "Verde", "Azul", "Rojo"), levels = c("Rojo", "Amarillo", "Verde", "Azul"))
x
unclass(x)

#Valores faltantes
x <- c(1, 2, NA, 10, 3)
is.na(x)       #Valor faltante detectado
is.nan(x)      #Valor no numerico que no es faltante

y <- c(1, 2, NaN, 10, 3)
is.na(y)       #Valor faltante detectado
is.nan(y)      #Valor no numerico que no es faltante

#Data Frames
x <- data.frame(foo = 1:4, bar = c(T, T, F, F))
x
nrow(x)
ncol(x)

#Names
x <- 1:3
names(x)
names(x) <- c("foo", "bar", "norf")
x
names(x)

x <- list(a = 1, b = 2, c = 3)
x

m <- matrix(1:4, nrow=2, ncol=2)
dimnames(m) <- list(c("a","b"), c("c","d"))
m

#Clase del 28/2/2018......................................................

#read.table es una funcion para leer archivos de datos
#data <- read.table("foo.txt") ejemplo para leer un archivo

#ejemplo
#inicio <- read.table("data.txt", nrows =100)
#clases <- sapply(inicio, class)

#dump
#dput
#ambos crean formatos editables en texto

#metainformacion: informacion que se deriva de la informacion dada

#Lectura y escritura de datos

#dput y dget

#1. Creo el objeto
y <- data.frame(a=1,b="a")
#2.Estudio la manera en que se guardara
dput(y)
#3.Lo guardo en mi disco duro
#dput traduce el objeto
dput(y,file="~/GitHub/SoftwareActuarial3/y.R")
#4.Genero un nuevo objeto a partir de la informacion guardada
y2 <- dget(file="~/GitHub/SoftwareActuarial3/y.R")

#Tarea almacenar en tu disco duro la base de datos
#mtcars en un archivo "Carros.R" y posteriormente
#guardarlo en un data frame nuevo que se llame
#Carros(Tu nombre)

#Clase del 5/3/2018......................................................
#Dump y Source

setwd("~/GitHub/Software_Actuarial_III")
x <- "Software Actuarial III"
y <- data.frame(a=1,b="a")
dump(c("x","y"),file="data.R") #Crea el objeto y lo recupera
rm(x,y) #Sirve para borrar variables
source("data.R") #Genera los objetos

#dump y source trabajan con las instrucciones de codigo que permiten volver a construir un objeto en lugar de obtenerlo desde alguna ubucacion guardada

#Conexion

con <- url("https://www.fcfm.buap.mx/")
x <- readLines(con)
x[7] <- "\t<title>FCFM</title>"
writeLines(x,"FCFM.html")

# [] regresa una clase del objeto original, puede estraer varios elementos de una lista
# [[]] es usado para extraer un elemento de una lista o data frame(solamente uno)
# $ se usa para extraer elementos de una lista o data frame por nombre

#Subconjuntos

# Creamos un vector
x <- c("a","b","c","c","d","e")
# Veamos el vector
x
#Extraemos elementos com []
x[1]
x[2]
# También podemos extraer una secuencia de elementos
x[1:4]
# Es posible extraer los elementos que cumplen una restricción
x[x>"b"]
# De manera equivalente se puede obtener un vector lógico
u <- x == "c"
u
x[u]
x[5-3]

#Creamos una lista
x <- list(foo=1:4,bar=0.6)
x
x[1]
#El resultado es una lista que contiene al vector de la secuencia
x[[1]]
#El resultado es el vector de la secuencia de numeros
x$foo
#El resultodo fue un vector como con [[]]
x["bar"]
x[["bar"]]

x <- list(foo=1:4,bar=0.6,baz="Hola")
x[c(1,3)]
#Extrae elementos no secuenciales 1 si, 2 no, 3 si
x[[c(1,3)]]
#Extrae secuencialmente desde los elemetos exttraidos
#Primero extrae el primer numero y de ahi extrae a tercera posicion

name <- "baz"
x[name]
x[[name]]
x$name
#Si yo quiero realizar extracciones con el $ es necesario escribir el nombre del objeto que quiero extraer, y aque no es capaz de realizar evaluaciones

#Se pueden extraer elementos de los elementos extraidos
x <- list(a= list(10,12,14), b= list(3.14,2.81))
x[[c(1,3)]]
x[[1]][[3]]
x[[c(2,1)]]

#Subconjuntos de una matriz

x <- matrix(1:6,2,3)
x

#El resultado es un vector
x[1,2]
x[2,1]
#Si dejamos un espacio, el resultado sera un vector
x[1,]
x[,2]
#Con drop = FALSE, se mantiene la dimension y el resultado sera una matriz
x[1,2,drop=FALSE]
#Con drop = FALSE, se mantiene la dimension y el resultado sera una matriz
x[1, ,drop=FALSE]

#Subconjuntos con nombres

x <- list(aardvark = 1:5)
x$a
x[["a"]]
x[["a",exact=FALSE]]

mtcars$mpg/mtcars$cyl
a <- mtcars$mpg/mtcars$cyl
a[15]

#Clase del 7/3/1018...............................................
setwd("~/GitHub/Software_Actuarial_III")

#Extraccion de valores faltantes
airquality[1:6,] #
complete.cases(airquality[1:10,]) #
completos <- complete.cases(airquality)
airquality[completos[1:6],]

data <- airquality[completos,]
data[1:6,]
#Al hacer una extraccion desde un vector de logicos, obtengo

#Algunas operaciones
x <- 1:4; y <- 6:9 #Se puede separar con un ;
x + y
x > 2
x >= 2
y == 8
x*y
x/y

x <- matrix(1:4,2,2); y <- matrix(rep(10,4),2,2)
x*y
x/y
x
y
x%*%y #Para multiplicar matrices se pone %*%
y%*%x #No hay conmutatividad en matrices

#Estructuras de control

#if, else para probar una condicion
#for ejecuta un ciclo un determinado numero de veces
#while ejecuta un ciclo mientras se cumpla una condicion
#repeat ejecuta un ciclo infinito
#break termina la ejecucion de un ciclo
#next "salta" una iteracion  de un ciclo
#return sale de una funcion

#if(<condicion>){
 ##algunas instrucciones
#}else{
 ##algunas otras instrucciones
#}

#if(<condicion 1>){
##algunas instrucciones
#}else if(<condicion 2>){
  ##algunas otras instrucciones
#}else{
 ##algunas instrucciones diferentes
#}

x = 2

if (x<5){
  msg <- "Si, en efecto el numero es menor"
  msg
}else{
  msg <- "No, el numero es mayor"
  msg
}

if (x<5){
  msg <- "Menor a 5"
  msg
}else if (x <=10){
  msg <- "Entre 5 y 10"
  msg
}else{
  msg <- "Mayor a 10"
  msg
}

#Formas de poner lo mismo
if(x>3){
  y <- 10
}else{
  y <- 0
}
y

y <- if(x>3){
  10
}else{
  0
}
y

#Clase del 12/3/1018...............................................
setwd("~/GitHub/Software_Actuarial_III")

#Ciclos for
for(i in 1:10){
  print(i)
}

for(i in c("a","b","c")){
  print(i)
}

#La forma en la que trabaja for dentro de R es mas similar a la instruccion For Each de VBA

x <- c("a","b","c","d")
for(i in 1:4){
  print(x[i])
}

for(i in seq_along(x)){
  print(x[i])
}

#seq_along(x) secuencia a lo largo de x

for(letra in x){
  print(letra)
}

for(i in 1:4) print(x[i])

x <- matrix(1:6,2,3)
for(i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}

#Ciclos while

count <- 0
while(count<10){
  print(count)
  count <- count + 1
}

#Con mas de una condicion

set.seed(1) #Se generan los mismos numeros aleatorios, pues se planto una semilla
contador <- 0
zil <- 5
while(zil>=3 && zil<=10){
  print(zil)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #Caminata aleatoria
    zil <- zil + 1
  } else {
    zil <- zil - 1
  }
  contador <- contador + 1
}

print(contador)
#Modificar el codigo, para contar

#Clase del 14/3/1018...............................................
setwd("~/GitHub/Software_Actuarial_III")

#Solucion de profesor para tarea

set.seed(1) 
z <- 5
x <- vector("numeric")
while(z>=3 && z<=10){
  moneda <- rbinom(1,1,0.5)
  x <- c(x,z)
  if(moneda==1){ 
    z <- z + 1
  } else {
    z <- z - 1
  }
}

x
plot(x,type="b")

#paste
#paste("texto", variable, "texto,")

#Instruccion repeat y break

#x0 <- 1
#tol <- 1e-8
#repeat{
  #x1 <- CalculaEstimado(x0)
  #if(abs(x1-x0)) < tol{
    #break
  #}else{
    #x0 <- x1
  #}
#}

#Next

for(i in 1:100){
  if(i<=20){
    next
    #evita hacer las primeras 20 iteraciones
  }
  #Otras instrucciones
}


#Clase del 21/3/1018...............................................
#Funciones

suma2 <- function(x,y){
  x+y
}
suma2(1,3) #4

mayor10 <- function(x){
  seleccionados <- x>10
  x[seleccionados]
}
mayor10(1:20)

mayor <- function(x, n=10){
  seleccionados <- x>n
  x[seleccionados]
}
mayor(1:20)
mayor(1:20,15)
mayor(n=15,x=1:20) #Si se escriben los argumentos no es necesario colocarlos en orden
#Alteernativa a funcion anterior
mayor <- function(x, n=10){
  x[x>n]
}
#Las variales solo tienen sentido en la funcion (existen)

promedioCol <- function(x, quitarNA = TRUE){
  nc <- ncol(x)
  medias <- vector("numeric",nc)
  for(i in 1:nc){
    medias[i] <- mean(x[,i], na.rm = quitarNA)
  }
  medias
}

x <- matrix(1:100,20,5)
promedioCol(x)

#Evaluacion perezosa
f <- function(a,b){
  a^2
}

f(2)

g <- function(a,b){
  print(a)
  print(b)
}

g(3,4) #Se tiene que poner los dos srgumentos para que n marque error

#El argumento "..."
#Recibe argumentos adicionales a los dados originalmente

myplot <- function(x,y,type="l",...){
  plot(x,y,type=type,...)
}

myplot(1:10,10:1)
plot(1:10,10:1)

#La funcion asume lineas en lugar de puntos

myplot(1:10,10:1,main="Mi Grafica")
plot(1:10,10:1,main="Mi Grafica")

myplot(1:10,10:1,main="Mi Grafica",perro="123")

#Tambien se utiliza cuando el numero de argumentos no puede ser conocido por anticipado

paste("Jose","Paz","Alex","Arlet","Susie","/")
paste("Jose","Paz","Alex","Arlet","Susie",sep = "/")

mipaste <- function(sep = " ",...){
  paste(...,sep = sep)
}
mipaste("/","Jose","Paz","Alex","Arlet","Susie")

#Tarea:
#install.packages("swirl")
#library(swirl)
#swirl()
#1:9 (Temas)


#Clase del 2/4/2018...............................................
#Scoping Rules

lm #funcion de r (regresion lineal)
lm <- function(x){x*x} #nueva funcion inventada
lm #funcion iinventada
rm(lm) #borra la funcion inventada
lm #funcion original de r

#entorno de trabajo, (simbolo,valor)

hacer.potencia <- function(n){
  potencia <- function(x){
    x^n
  }
  potencia
}

cubica <- hacer.potencia(3)
cuadrada <- hacer.potencia(2)
cubica(3)
cuadrada(3)

ls(environment(cubica))
get("n",enviroment(cubica))

#Entorno global contiene a x ^ y
y <- 10 #valor global
f <- function(x){
  y <- 2 #valor local
  y^2+g(x)
}
g <- function(x){
  x*y
}
f(3)

x <- as.Date("1970-01-01")
x
unclass(x)
unclass(as.Date("1970-01-02"))

#Mary Paz 19/06/1998
inicio <- unclass(as.Date("1998-06-19"))
final <- unclass(as.Date("2018-04-02"))
final-inicio #Dias vividos

#POSIXct entero grande, util al guardar los datos de un data frame
#POSIXlt lista y guarda un conjunto de informacion, util como dia de la semana,año,mes,etc

weekdays(as.Date("1995-04-08"))
#month dice el numero del mes
#quarters dice el numero de cuarto
a <- as.POSIXct("1995-04-08")
b <- as.POSIXlt("1995-04-08")

#Clase del 4/4/2018...............................................
#Funciones de ciclo

#Hay funciones que implementan ciclos de manera interna
#lapply:aplica una funcion a todos los elementos de la lista
#sapply:lo mismo que lapplay, pero intenta simplificar el resultado
#apply:aplica uns funcion dentro de los margenes de un arreglo
#tapply:aplica una funcion sobre los subconjuntos de una vector
#mapply:version multivariante de lapply
#La funcion split es util para trabajar con estas funciones (lapply)

#lapply
x <- list(a=1:5,b=rnorm(10000))
lapply(x,mean)

x <- list(a=1:5,b=rnorm(10),c=rnorm(10,1),d=rnorm(10,2))
lapply(x,mean)

x <- 1:4
lapply(x,runif)

x <- 1:4
lapply(x,runif,max=15,min=5)

#sapply
x <- list(a=1:5,b=rnorm(10),c=rnorm(10,3),d=rnorm(10,5))
lapply(x,mean)
sapply(x,mean)

#apply
#str(apply)
x <- matrix(rnorm(200),20,10)
apply(x,2,mean)
apply(x,1,sum)

#Alternativas especificas a la funcion apply
#rowSums=apply(x,1,sum)
#rowMeans=apply(x,1,mean)
#colSums=apply(x,2,sum)
#colMeans=apply(x,2,mean)

x <- matrix(rnorm(200),20,10)
apply(x,1,quantile,probs=c(0.25,0.75))

a <- array(rnorm(2*2*10),c(2,2,10))
apply(a,c(1,2),mean)
rowMeans(a,dims = 2)

rowMeans(a,dims = 1)
(0.48546657+0.06740679)/2
(-0.07306763+(-0.20002284))/2

#mapply
list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
mapply(rep,1:4,4:1)#es lo mismo que la instruccion hecha con la lista

#Clase del 9/4/2018...............................................
# Vectorizar una funcion

 noise <- function(n,mean,sd){
   rnorm(n,mean,sd)
 }

noise(5,1,2)
noise(1:5,1:5,2)
mapply(noise,1:5,1:5,2)

#tapply
str(tapply)

x <- c(rnorm(10),runif(10),rnorm(10,1)) #son 30 elementos
f <- gl(3,10) #gl es generate levels
f
tapply(x,f,mean) #los niveles corresponden

tapply(x,f,mean,simplify = F)

#split
str(split)

x <- c(rnorm(10),runif(10),rexp(10,1)) #son 30 elementos
f <- gl(3,10) #gl es generate levels
f
split(x,f)

#Es comun aplicar un split y despues un apply
lapply(split(x,f),mean)

head(airquality)
split(airquality,airquality$Month)
sapply(split(airquality,airquality$Month),colMeans,na.rm=TRUE)
colMeans(airquality,na.rm = TRUE)# es diferente que la instruccion de arriba

#split a mas de un nivel
x <- rnorm(10)
f1 <- gl(2,5)
f2 <- gl(5,2)
f1
f2
interaction(f1,f2)#crea todos los niveles posibles, pero en la interaccion no resultan todos
x
str(split(x,list(f1,f2)))

s <- sapply(split(mtcars$hp,mtcars$cyl),mean)
s <- sapply(split(mtcars$mpg,mtcars$cyl),mean)
s

#Clase del 11/4/2018...............................................
#Manejo de errores

#message: notoficacion generica, el codigio sigue corriendo
#warning: algo esta mal, no es fatal, sigue corriendo
#error: problema fatal, el codigo deja de correr
#condition: indica que algo inesperado puede ocurrir, programadores pueden crear sus propias condiciones
#Ejemplos:

log(-1)

imprimeMSJ <- function(x){
  if(x>0)
    print("x es mayor que 0")
  else
    print("x es menor o igual a 0")
}

imprimeMSJ2 <- function(x){
  if(is.na(x)){
    print("x es no valida")
}else if(x<=0){
  print("x es menor o igual a 0")
}else if(x>0){
  print("x es mayor que 0")
}else{
  
}
}

imprimeMSJ2(NA)
imprimeMSJ(1) #
imprimeMSJ(NA)

#Herramientas para depurar
#traceback: imprime la funcion que se esta ejecutando
#debug: marca una funcion para cprrerla paso a paso
#browser: suspende la ejecucion de una funcion y pone la funcion es depuracion
#trace: te permite insertar codigo para depurar una funcion en lugares especificos del codigo
#recover: te permite recuperar el comportamiento del error

#rm(list=ls())

#mean(x)
#traceback()

#lm(y ~ x)
#traceback()

#debug(lm)
#debug(eval)

#options(error=recover)

#str
str(airquality)
summary(airquality)

m <- matrix(rnorm(100),10,10)
m
str(m)
summary(m)

s <- split(airquality,airquality$Month)
str(s)

#Generar numeros aleatorios

#rnorm: genera variables aleatorias normales con una media de desviaion estandar dadas
#dnorm: evalua la funcion de densidad  en un punto de una distribucion normal dada una media y una desviacion estandar
#pnorm: evalua la funcion de distribucion en un punto de una distribucuion normal
#rpois: genera variables aleatorias Poisson con una tasa dada







