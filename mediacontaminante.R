directorio = "C:/Users/xavie/OneDrive/Documentos/GitHub/Software_Actuarial_III/specdata"
mediacontaminante <- function(directorio,contaminante,id){
  
  ronda <- vector("numeric")
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
  
  
  if (contaminante == "sulfate"){
    pl <- data.frame(unore$sulfate)
    ipl <- colMeans(pl,na.rm = TRUE)            
    ipl
  }else if (contaminante == "nitrate"){
    sl <- data.frame(unore$nitrate)
    ipl <- colMeans(sl,na.rm = TRUE)
    ipl
  }
    #print(ipl)
    ronda <- c(ronda,ipl)
    print(ronda)
    
  }
 
}

mediacontaminante(directorio,contaminante = "sulfate", id = 1:5)

