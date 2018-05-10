directorio = "C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata"
corr <- function(directorio,horizonte = 0){
  id = 1:250
  
  simuy <- vector("numeric")
  for (i in id){
  
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
  
  torqo <- na.exclude(unore)
  torqo
  soler <- cor(torqo$sulfate,torqo$nitrate)
  
  #print(soler)
  
  if (soler>horizonte){
    #msg <- "Es este"
    #print(msg)
    simuy <- c(simuy,soler)
  }else{
    
  }
 
  }
  print(simuy)
}

corr(directorio,horizonte = 0)