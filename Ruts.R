
source("Funciones_TareaNro4.R")

#t: tiempo que se demora en ejecutar un codigo
#def t: tiempo que se demora en recorrer la lista Ruts_validos
#Ruts_validos: Generar numeros de rut y almacenarlos en una lista
#Se generan 5000 numeros aleatorios entre 0:9999999 sin repeticion 
#Cada uno acompañado de su dv


Ruts_validos <- list()
for(i in sample(0000000:9999999,5000,replace=F)){
  rut<- print(paste(i,"-",dv(i)))
  Ruts_validos<-c(Ruts_validos,rut)
}
t <- proc.time()
for(rut in Ruts_validos){
  print(rut)
}
proc.time() - t
# proc.time() - t
   #user  system elapsed 
   #2.08    0.00    2.12 
