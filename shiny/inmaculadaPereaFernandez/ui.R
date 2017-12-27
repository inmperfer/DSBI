
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

var_texto= "Esta aplicación shiny tiene el objetivo de demostrar los conocimientos adquiridos en la construcción de cuadro de mandos con R."

library(shiny)

shinyUI(fluidPage(
  list(tags$head(HTML('<link rel="icon", href="shiny_logo.png", type="image/png" />'))),
  div(style="padding: 1px 0px; width: '100%'",
      titlePanel(title="", windowTitle="Ejercicio evaluación Shiny")
  ),
  navbarPage(
  title=div(img(src="logoR.png", width="40px", align="center")),
                       
######## tabPanel: Informacion
tabPanel("Informacion",
                      fluidRow(column(12, h4("Objetivos:"), var_texto)),
                      br(),
                      wellPanel(
                        fluidRow(
                          column(6, strong("Resumen Trabajo Fin de máster:"), 
                                 
                          p(br(), "El rastreador de estrellas es un instrumento crucial en cualquier satélite para determinar su orientación y navegar a través del espacio. 
                            Este dispositivo consta esencialmente, de una cámara y un pequeño ordenador. La cámara captura imágenes de las estrellas y la computadora determina la orientación del satélite en base a las estrellas visibles."),
                                 
                          p("Los cambios bruscos de temperatura que se experimentan en el espacio pueden deformar la lente de la cámara,
                            desplazando las posiciones de las estrellas en las imágenes captadas. Además, la radiación, y la basura espacial pueden manifestarse en imágenes de cámara que el rastreador puede interpretar como falsas estrellas."),
                          
                          p("Mi trabajo fin de máster consiste en participar en el reto propuesto por la Agencia Espacial Europea (ESA) con el propósito de encontrar nuevos algoritmos de identificación de estrellas más robustos a la incertidumbre de medición."),
                                 
                          p("Se puede encontrar información detallada en el siguiente enlace:",
                            tags$a(href="https://kelvins.esa.int/star-trackers-first-contact/home/", "Kelvins - Star Trackers: First Contact")),
                          br(), br(), 
                          strong("Autor:"),
                          p("Inmaculada Perea Fernández")),
                          
                          column(6, 
                                 HTML('<iframe src="http://www.esa.int/spaceinvideos/content/view/embedjw/414359" align="center" width="640" height="360" frameborder="0"></iframe>'))
                       )
                    )
                  ),

  
########## tabPanel: Datos
 tabPanel("Datos", 
          DT::dataTableOutput("OUTdatos")
 ),

# ########## tabPanel: Bidimensional
# 
 tabPanel("Bidimensional",
                   sidebarLayout(
                     sidebarPanel(
                       selectInput("Selvariable01",
                                   "Selecciona Variable X:",
                                   choices = names(creditos)[c(var_numer)],
                                   selected = names(creditos)[var_numer[1]]),
                       selectInput("Selvariable02",
                                   "Selecciona Variable Y:",
                                   choices = names(creditos)[c(var_numer)],
                                   selected = names(creditos)[var_numer[2]]),
                       selectInput("Selvariable03",
                                   "Selecciona Variable categorica:",
                                   choices = names(creditos)[c(var_categ)],
                                   selected = names(creditos)[var_categ[1]])
                     ),
                     mainPanel(
                       tabsetPanel(
                         
                         tabPanel("Dispersion",
                            plotly::plotlyOutput("OUTdispersion")),
                         
                         tabPanel("Reg. Lineal",
                          shiny::verbatimTextOutput("OUTRegLineal")),
                         
                         tabPanel("Dispersion Categ.",
                            plotly::plotlyOutput("OUTdispersioncat")

                       )
                    )
                  )
 )),

# ########## tabPanel: Mapa
tabPanel("Mapa",
          br(),
          leaflet::leafletOutput("map", height="600px")
 )

# ## fin: navbarPage
  )
))
