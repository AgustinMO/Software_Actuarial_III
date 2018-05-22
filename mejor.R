setwd("~/GitHub/Software_Actuarial_III/hospital/Calidad de Hospitales - data")

mejor <- function(estado,resultado){

  as.character(estado)
  
  leerdatos <- read.csv("outcome-of-care-measures.csv", colClasses = "character") 
  roma <- (leerdatos)
  
  if(resultado == "ataque"){
    renvim <- roma[c(2,7,11)]
    nomo <- renvim[which(renvim$State == estado),] 
    ortyl <- nomo[order(nomo$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack),]
    dort <- ortyl[1,1]
    
  }else if(resultado == "falla"){
    renvim <- roma[c(2,7,17)]
    nomo <- renvim[which(renvim$State == estado),] 
    ortyl <- nomo[order(nomo$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure),]
    dort <- ortyl[1,1]
    
  }else if(resultado == "neumonia"){
    renvim <- roma[c(2,7,23)]
    nomo <- renvim[which(renvim$State == estado),] 
    ortyl <- nomo[order(nomo$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia),]
    dort <- ortyl[1,1]
    
  }
  dort
}

mejor("AK","ataque")
