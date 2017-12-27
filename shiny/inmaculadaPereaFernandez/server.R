
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  #### Video
  output$video <- renderUI({
    HTML('<iframe src="http://www.esa.int/spaceinvideos/content/view/embedjw/414359" align="center" width="640" height="360" frameborder="0"></iframe>')
  })
  
  
  #### PAnel: Datos
  
  output$OUTdatos = DT::renderDataTable(creditos, 
                                        filter="top")
  
  #### PAnel: Mapa
  
  output$map = leaflet::renderLeaflet({
    leaflet() %>%
      addTiles() %>%
      setView(lng=-5.98814, lat=37.35945, zoom=18)
    
  })
  
  
  #### PAnel: Bidimensional
  datos_bid= reactive({
    data.frame(varX=creditos[, input$Selvariable01],
               varY=creditos[, input$Selvariable02],
               Agru=creditos[, input$Selvariable03]
               )
  })
  
  #### PAnel: Dispersion
  output$OUTdispersion = plotly::renderPlotly({
    df_dispersion=datos_bid()
    plotly::plot_ly(df_dispersion, x=~varX, y=~varY)
  })
  
  #### PAnel: Dispersion Cat
  output$OUTdispersioncat = plotly::renderPlotly({
    df_dispersion=datos_bid()
    plotly::plot_ly(df_dispersion, x=~varX, y=~varY, color=~Agru)
  })
  #### PAnel: Res REg lineal
  output$OUTRegLineal =renderPrint({
    df_reglineal =datos_bid()
    cat(paste("VarX= ", input$Selvariable01, "\n"))
    cat(paste("VarY= ", input$Selvariable02, "\n\n"))
    summary(lm(df_reglineal$varY~df_reglineal$varX))
  })
  

  output$distPlot <- renderPlot({

    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')

  })

})
