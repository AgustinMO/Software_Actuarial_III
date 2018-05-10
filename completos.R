directorio = "C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata"
completos <- function(directorio,id){
  
  coel <- c()
  eor <- vector("numeric")
  rina <- vector("numeric")
  for(i in id){
    
  if (i < 10){
    lets <- paste("C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata/00",i,".csv",sep="")
    unore <- read.csv(lets, header = T)
    unore
  }else if (i >= 10 & i < 100 ){
    lets <- paste("C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata/0",i,".csv",sep="")
    unore <- read.csv(lets, header = T)
    unore
  }else if (i >= 100){
    lets <- paste("C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata/",i,".csv",sep="")
    unore <- read.csv(lets, header = T)
    unore
  }
  
  toro <- na.exclude(unore)
  toro
  dort <- dim.data.frame(toro)
  coel <- dort[1]
  
  #print(coel)
  #print(i)
  rina <- c(rina,coel)
  eor <- c(eor,i)
  }
  #print(rina)
  #print(eor)
  spoer <- data.frame(id = eor,nobs = rina)
  print(spoer)
}

completos(directorio,id = 1:332)