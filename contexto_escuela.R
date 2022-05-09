
# Se trabaja con la matriz "Contexto.xslx" con datos recopilados
#para el diagnóstico

# 1.- Importacion de la matriz


# ----------------------------------------------------------
#     Exploración de la matriz Contexto
# ----------------------------------------------------------
dim(Contexto)
str(Contexto)
summary(Contexto)

#-------------------------------------------
#      Exploración de la matriz Multiples

# -------------------------------------------

dim(Multiples)
str(Multiples)
summary(Multiples)

#------------------------------------------
#       Configuración de variables
# --------------------------------------------

# Canales de aprendizaje
Contexto$Canalaprendizaje
Contexto$Canalaprendizaje<-factor(Contexto$Canalaprendizaje, 
                       levels=c("No definido", "Visual",
                                "Auditivo", "Kinestesico"))
summary(Contexto$Canalaprendizaje)

#Gráfico de estilos de aprendizaje
color=c("springgreen", "tan1", "wheat", "skyblue")

GB1 <- ggplot(Contexto, aes(x=Canalaprendizaje)) +
  geom_bar(colour= "black", fill=color)+
  ggtitle( " Estilos de aprendizaje predominantes en 4°B de la 
           Escuela Primaria Lázaro Cárdenas del Río") +
  xlab("Estilos de aprendizaje") +
  ylab("Frecuencias") +
  theme_minimal()
GB1



# Inteligencias multiples
Contexto$Inteligencia
Contexto$Inteligencia<-factor(Contexto$Inteligencia, 
                                  levels=c("Sin preferencia", "Naturista", 
                                  "Corporal", "Interpersonal", "Espacial"))
summary(Contexto$Inteligencia)

#Gráfico de estilos de aprendizaje
color=c("salmon", "seashell", "plum2", "purple2", "pink3")

GB2 <- ggplot(Contexto, aes(x=Inteligencia)) +
  geom_bar(colour= "black", fill=color)+
  ggtitle( "Inteligencias múltiples predominantes en 4°B de la 
           Escuela Primaria Lázaro Cárdenas del Río") +
  xlab("Inteligencias múltiples") +
  ylab("Frecuencias") +
  theme_minimal()
GB2



