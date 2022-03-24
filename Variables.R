
#Tipos de variables 


install.packages("datos")
library(datos)

aero<-datos::aerolineas
dim(aero)

str(aero)

aero$aerolinea
aero$nombre

#grafico de barras
# Creación del gráfico
GB1 <- ggplot( aero, aes(x=aerolinea)) +
  geom_bar() +
  ggtitle( " Gráfico de Barras " ) +
  xlab("Aerolineas") +
  ylab("Frecuencias") +
  theme_minimal()
GB1

#Pinguinos

penguins <-datos::pinguinos
dim(penguins)
anyNA(penguins)

str(penguins)

penguins$isla

#Interger= int = discretas

#Ejercicio 1: seleccionar dos matrices de datos y describir los 
#tipos de datos, sólo ocupar dim y str

#Matriz de datos 1: clima
clim<-datos::clima
dim(clim) #existen 26115 observaciones con 15 variables
str(clim)
#variable origen es cualitativa nominal (no hay orden)
#variable anio es cualitativa ordinal (muestra años)
#variable día es cualitativa discreta (muestra numeros enteros y
#el 0 muestra ausencia de días)
clim$hora
#variable hora es cuantitativa discreta (en este caso no se 
#fracción, escala de medición de razón)
clim$punto_rocio
#variable punto_rocio es cuantitativa contínua (muestra decimales
#escala de medición de intervalo, el 0 no es absoluto a partir 
#del dato 512)
clim$humedad
#variable humedad es cualitativa contínua (muestra decimales, 
#escala de medición de razón: 0 absoluto)
clim$direccion_viento
#variable cuantitativa discreta (no muestra decimales, escala
#de medición de razón)
#variable velocidad_viento cuantitativa continua(muestra decimal, 
#escala de medición de razón, 0 significa absoluto)
clim$velocidad_rafaga
#variable velocidad_rafaga es cuantitativa(decimales, 0 absoluto 
#Por ser velocidad)
clim$precipitacion
#variable precipitación es cuatitativa continua (escala de 
#medición de razón,0 significa que no hay)
clim$presion 
#variable presion es cualitativa continua (decimal, escala de 
#medicion de razón, 0 no hay)
clim$visibilidad
#variable visibilidad es cuantitativa discreta (no hay decimales, 
#escala de medicion de razon, 0 no hay)
clim$fecha_hora
#variable fecha_hora es cualitativa ordinal, muestra un orden, 
#escala de medicion ordinal (ayuda a ver el orden en que se mostró)
str(clim)

#Segunda matriz de datos: diamantes
diam<-datos::diamantes
dim(diam) #exiten 53940 con 10 variables
str(diam)

diam$precio
#variable precio es cualitativas ordinales (muestran jerarquía de 
#valor, escala ordinal)
diam$quilate
#variable quilate es cuantitativa continua (muestra decimal, escala
#de medición de razón, el 0 es absoluto) 
#variable corte es cualitativa ordinal (muestra una jerarquía
#escala de medición ordinal, por niveles)
diam$color
#variable color es cualitativa nominal (no muestra una jerarquía,
#escala de medición nominal)
diam$claridad
#variable claridad es cualitativa nominal (no muestra jerarquía)
diam$profundidad
#variable profundidad es cuantitativa continua (decimales, 
#escala de medicion de razón, 0 es que no hay)
diam$tabla
#variable tabla es cuantitativa discreta (sin decimales, 
#escala de medicion de razon)
diam$x
#variable x es cuantitativa continua, hay decimales, razon
diam$y
#variable y es cuantitativa continua, hay decimales, razon
diam$z
#variable z es cuantitativa continua, hay decimales, razon
