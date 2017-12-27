library(DT)
library(plotly)
library(leaflet)
library(ggmap)
library(dplyr)

creditos = read.csv("credit.csv")

names(creditos)= c("X", "Ingresos", "Limite", "Tasa", "NumTarjetas", "Edad", 
                   "Educacion", "Sexo", "Estudiante", "Casado", "Raza", "Balance")

var_categ= c(8:11)
var_numer = c(2, 3, 5, 6, 7)

