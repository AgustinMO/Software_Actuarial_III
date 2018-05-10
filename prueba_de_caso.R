setwd("~/GitHub/Software_Actuarial_III/specdata")

y <- read.csv("C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata/001.csv", header = T)
y

resolucion <- function(roma){
  
  roma <- "005"
  as.character(roma)
  letra <- paste("C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata/",roma,".csv",sep="")
  read.csv(letra, header = T)
  
}
yo <- resolucion()
#sapply(split(yo,yo$sulfate,mean),colMeans,na.rm=TRUE)
colMeans(r)
r <- data.frame(yo$sulfate)

########################################################################

primero = "C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata"
intento1cont <- function(primero,segundo,tercero){
  
  as.character(tercero)
  letra <- paste("C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata/",tercero,".csv",sep="")
  s <- read.csv(letra, header = T)
  s
  
  if (segundo == "sulfate"){
    pl <- data.frame(s$sulfate)
    colMeans(pl,na.rm = TRUE)            
    
  }else if (segundo == "nitrate"){
    sl <- data.frame(s$nitrate)
    colMeans(sl,na.rm = TRUE)
    
  }
  
}

intento1cont(primero, "sulfate", "001")
intento1cont(primero,segundo="sulfate",tercero = "001")

###################################################################################

directorio1 = "C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata"
intento1comp <- function(directorio1,last){
  
  as.character(last)
  letran <- paste("C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata/",last,".csv",sep="")
  soli <- read.csv(letran, header = TRUE)
  soli
  
  toro <- na.exclude(soli)
  toro
  dort <- dim.data.frame(toro)
  dort[1]
  
}

intento1comp(last="001")

####################################################################################################

directorio2 = "C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata"
novofun <- function(directorio2,hor = 0,bidu){
  
  as.character(bidu)
  letranix <- paste("C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata/",bidu,".csv",sep="")
  doli <- read.csv(letranix, header = TRUE)
  doli
  
  torqo <- na.exclude(doli)
  torqo
  cor(torqo$sulfate,torqo$nitrate)
  
}

novofun(bidu="001")

##################################################################################################

directorio = "C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata"
mediacontaminante <- function(directorio,contaminante,id){
  
  #for (i in id){
  
  if (id < 10){
    lets <- paste("C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata/00",id,".csv",sep="")
    unore <- read.csv(lets, header = T)
    unore
  }else if (id >= 10 & id < 100 ){
    lets <- paste("C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata/0",id,".csv",sep="")
    unore <- read.csv(lets, header = T)
    unore
  }else if (id >= 100){
    lets <- paste("C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata/",id,".csv",sep="")
    unore <- read.csv(lets, header = T)
    unore
  }
  
  
  if (contaminante == "sulfate"){
    pl <- data.frame(unore$sulfate)
    i <- colMeans(pl,na.rm = TRUE)            
    i
  }else if (contaminante == "nitrate"){
    sl <- data.frame(unore$nitrate)
    i <- colMeans(sl,na.rm = TRUE)
    i
  }
  
  #}
}

mediacontaminante(contaminante = "sulfate", id = 2)

#########################################################################################

directorio = "C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata"
completos <- function(directorio,id){
  
  if (id < 10){
    lets <- paste("C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata/00",id,".csv",sep="")
    unore <- read.csv(lets, header = T)
    unore
  }else if (id >= 10 & id < 100 ){
    lets <- paste("C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata/0",id,".csv",sep="")
    unore <- read.csv(lets, header = T)
    unore
  }else if (id >= 100){
    lets <- paste("C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata/",id,".csv",sep="")
    unore <- read.csv(lets, header = T)
    unore
  }
  
  toro <- na.exclude(unore)
  toro
  dort <- dim.data.frame(toro)
  dort[1]
  
}

completos(directorio, id = 1)

##################################################################################################################

directorio = "C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata"
corr <- function(directorio,horizonte = 0,id){
  
  if (id < 10){
    lets <- paste("C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata/00",id,".csv",sep="")
    unore <- read.csv(lets, header = T)
    unore
  }else if (id >= 10 & id < 100 ){
    lets <- paste("C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata/0",id,".csv",sep="")
    unore <- read.csv(lets, header = T)
    unore
  }else if (id >= 100){
    lets <- paste("C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata/",id,".csv",sep="")
    unore <- read.csv(lets, header = T)
    unore
  }
  
  torqo <- na.exclude(unore)
  torqo
  cor(torqo$sulfate,torqo$nitrate)
  
}

corr(directrorio,id=1)

  
