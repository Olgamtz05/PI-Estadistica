
# -----------------Tablas de frecuencias------------------------

# --- Exploración de la matriz, aun no se configura nada ---
# 1. Importar la matriz de datos (iris)
data(iris)

# 2. Exploración de la matriz
# Dimensión de la matriz 150 individuos y 5 variables
dim(iris)

# 3. Nombre de las variables
colnames(iris)
colnames(iris$Species) #colnames solo es para las varibles de fuera
iris$Species #iris + signo dolar + variable a explorar 

#Tipos de variables 
str(iris)


#Buscar datos faltantes (NA´S)
anyNA(iris)


# ------- Generación de tablas NO AGRUPADAS--------

#1. Convertir la matriz de datos a un dataframe, se agrupan los valores
#para la variable petal.Length y se calcula la frecuencia absoluta.

tabla_PL<-as.data.frame(table(PL=iris$Petal.Length)) #PL es la nueva variable 
#resumida igual al petalLength

#2. Visualización de la variable 
tabla_PL #Freq=frecuencia absoluta

#3. Construcción de tabla de frecuencias completas redondeando a 3 decimales

tabla_PL1<-transform(tabla_PL, 
                     freqAc=cumsum(Freq), Rel=round(prop.table(Freq), 3),
                     RelAc=round(cumsum(prop.table(Freq)), 3))
#Sacar otra vez las frecuencias
#4. Visualizar la variable tabla_PL1
tabla_PL1


# Generación de tablas AGRUPADAS 

#1. Agrupación de la variable PL a 8 de amplitud

tabla_clases<-as.data.frame(table(Petal.Length=factor(cut(iris$Petal.Length, breaks = 8))))
#8 filas de la variable

#2. Visualizar la tabla
tabla_clases

#3. Construcción de la tabla completa
tabla_PL2<-transform(tabla_clases, 
                     freqAc=cumsum(Freq), Rel=round(prop.table(Freq), 3),
                     RelAc=round(cumsum(prop.table(Freq)), 3))

#Visualizar la variable tabla_clases
tabla_PL2
