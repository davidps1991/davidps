dir<-"C:/Users/hp/Desktop"
setwd(dir)
list.files()

data<-read.table("data.txt",header=TRUE,dec=",",sep="\t")
str(data)
#View(data)
is.list(data)
is.atomic(data)

class(data)
names(data)
colnames(data)
nombres<-colnames(data)
nombres

v1<-dim(data)
dim(data)
nrow(data)
ncol(data)
#selecciona la 3ra columna de la data
edad<-data[,3]
edad<-data[,"EDAD"]
#Muestra el tipo de datos contenidos en EDAD
typeof(edad)
is.list(edad)
is.atomic(edad)
#Obtiene la media
mean(edad)
#obtiene la desviacion estandar
sd(edad)
#minimo
min(edad)
max(edad)
#histograma
hist(edad)
hist(edad,col = "steelblue")
#pusar TAB para mostrar cuadro de opciones

#Subsetting
str(data)
data_fem<-subset(data,subset=data[,"SEXO"]=="FEMENINO")

data_edad<-dubset(data,subset=data[,"SEXO"]<20)

#FRECUENCIAS de la columna SEXO 
table(data[,"SEXO"])
table(data_fem[,"SEXO"])  # en el suset data_fem

#LAZOS FOR
ncol(data) #devuelve numero de columnas de data
tipos<-numeric(ncol(data)) #numeric crea vector de dimension (argumento) lleno de ceros
clase<-numeric(ncol(data))

for(i in 1:ncol(data)){
  tipos[i]<-typeof(data[,i])
  clase[i]<-class(data[,i])
}
tipos
clase

#funcion para contar daltos perdidos
vacios<-numeric(ncol(data))
for(i in 1:ncol(data)){
  vacios[i]<-sum(is.na(data[,i]))
}
vacios


