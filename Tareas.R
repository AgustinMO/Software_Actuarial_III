#Tarea de caminata aleatoria 14/3/2018............................
set.seed(1) #Se generan los mismos numeros aleatorios, pues se planto una semilla
i <- 1
x <- 5
while(x>=c(3) && x<=c(10)){
  print(x)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #Caminata aleatoria
    xi <- x[i] + 1
    x <- c(x,xi)
  } else {
    xi <- x[i] - 1
    x <- c(x,xi)
  }
  if(xi==2){
    x <- 2
  }else if (xi==11){
    x <- 11
  }else{
    
  }
  i <- i + 1
}
#print(i)
print(x)
#Modificar el codigo, para contar

set.seed(1) 
i <- 1
x <- 5
while(x>=c(3) && x<=c(10)){
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ 
    xi <- x[i] + 1
    x <- c(x,xi)
  } else {
    xi <- x[i] - 1
    x <- c(x,xi)
  }
  if(xi<3){
    break(x)
    x = x[1:i]
  }else if (xi>10){
    break(x)
    x = x[1:i]
  }else{
    
  }
  i <- i + 1
}
y <- x[1:i]
x <- y
x

#Tarea de dput y dget ...........................................
x <- data.frame(mtcars)
x
dput(x)
dput(x, file="~/GitHub/Software_Actuarial_III/Carros.R")
nuevox <- dget(file="~/GitHub/Software_Actuarial_III/Carros.R")
CarrosAgustin <- data.frame(nuevox)
CarrosAgustin

silaba <- function(x,y){
 print(x+y)
}

silaba(1,5)

cor(3.6456,3.766)
