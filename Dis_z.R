
# ______________ DISTRIBUCIÓN Z ______________


#        Ejemplo 1


# Las calificaciones de ingreso a la BENV
# se ajustan a una distribucion Normal,
# donde la media de la prueba es 72 y
# la desviación estándar es 15.2.
# ¿Cuál es el porcentaje de estudiantes
# con un puntaje mayor a 84 en el examen?

x<-pnorm(84, mean= 72, sd = 15.2, lower.tail =  FALSE )
x
x* 100


#     Ejemplo 2


# 1.- Generar las calificaciones de Ciencias
# 27: número de alumnas/os
#sample y esta fórmula sirve para que genere calificaciones
#automáticas de manera aleatoria
#replace ayuda a que tome todos los datos en cuenta 

x <- sample ( 5 : 10 , 27 , replace = TRUE )
x

# 2.- Calcular la media
mean( x )

# 3.- Calcular la desviación estándar
sd( x )

# 4.- Realizar el cálculo de la distribución Normal
# Se quiere saber el porcentaje de alumnas/os que
# tienen una calificación mayor a 9.

x1 <- pnorm( 90 , mean = 77 , sd = 17 , lower.tail   =  FALSE )
x1
x1 * 100

#El 22.22% de mis alumnos tienen un desempeño alto
#27 alumnos es el 100% y 22.22% tienen buen desempeño
#se tiene, en total, 6 alumnos con buen desempeño.


#                   Ejercicio 1

# 1.- Generar las calificaciones de Español
# 27: número de alumnas/os
y <- sample ( 5 : 10 , 27 , replace = TRUE )
y

# 2.- Calcular la media
mean( y )

# 3.- Calcular la desviación estándar
sd( x )

# 4.- Realizar el cálculo de la distribución Normal
# Se quiere saber el porcentaje de alumnas/os que
# tienen una calificación menor a 8 para regularizarlos.

y1 <- pnorm( 80 , mean = 78 , sd = 17 , lower.tail   =  TRUE )
y1 * 100
#El 54.68% de los alumnos tienen calificaciones menores a 8

#El 54.68% de los alumnos requieren regularización en Español
#27 alumnos es el 100% y 54.68% tienen requieren regularización
#Se requiere regularizar a 14 alumnos en la materia de Español.


#                   Ejercicio 2

# 1.- Generar las calificaciones de Historia
# 27: número de alumnas/os
h <- sample ( 5 : 10 , 27 , replace = TRUE )
h

# 2.- Calcular la media
mean( h )

# 3.- Calcular la desviación estándar
sd( h )

# 4.- Realizar el cálculo de la distribución Normal
# La maestra decidió que, para el último bloque de historia,
#los que tuvieran una calificación mayor a 7 en el 
#trimeste anterior realizarán una exposición sobre un tema 
#visto que más les haya llamado la atención; en cambio, los que
#estén por debajo de esta calificación tendrán que ir al museo 
#de antropología y realizar una reseña de una obra que más les
#haya gustado.
# tienen una calificación menor a 8 para regularizarlos.

h1 <- pnorm( 70 , mean = 77 , sd = 16 , lower.tail   =  FALSE )

h1 * 100
#El 66.91% de los alumnos realizarán exposición

h1 <- pnorm( 70 , mean = 77 , sd = 16 , lower.tail   =  TRUE )
h1 * 100
#El 33% de los alumnos visitarán el museo

#El 66.91% realizarán exposición
#27 alumnos es el 100% y 66.91% realizarán exposición
#En total, 18 alumnos realizarán una exposición


#El 33% de alumnos visitará el museo
#27 alumnos es el 100% y 33% visitarán el museo
#En total, 9 alumnos realizarán una exposición