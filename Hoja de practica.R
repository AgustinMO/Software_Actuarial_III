x<-c(1)
y<-c(2,3)
c(x,y)
z = c(x,y)
t<-c(4,5,6)
c(z,t)

x<-list(1)
y<-list(2,3)
c(x,y)


x <- c(5)
x + 1
x

5
[1] 4
[1] 3
[1] 4
[1] 5
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 7
[1] 6
[1] 5
[1] 6
[1] 5
[1] 6
[1] 5
[1] 6
[1] 7
[1] 6
[1] 7
[1] 8
[1] 7
[1] 8
[1] 7
[1] 6
[1] 5
[1] 4
[1] 3
[1] 4
[1] 3

x <- 5
xi <- x+1
y <- c(x,xi)
y
x <- y
x
xi <- x[2]+1
y <- c(x,xi)
y
x <- y
x
xi <- x[3]+1
y <- c(x,xi)
y
x <- y
x
xi <- x[4]+1
y <- c(x,xi)
y

x <- c(1,2,3,4,5,6,7)
x[3]
x[[3]]
y <- c(x,x[3])
y

#Se puede con for
set.seed(1)
x <- 5
for(i in 1:30){
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #Caminata aleatoria
    xi <- x[i] + 1
    x <- c(x,xi)
  } else {
    xi <- x[i] - 1
    x <- c(x,xi)
  }
  
  #xi <- x[i]+1
  #y <- c(x,xi)
  #y
  #x <- y
}
print(x)
x

x <- c(4,7,4,5,2,6,8)
x[[5]]
x