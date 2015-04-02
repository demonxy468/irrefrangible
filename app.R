library(markdown)
library(shiny)
library(shinythemes)
server <- shinyServer(function(input, output){})

img_link <- function(file){
  return(file.path(getwd(),"assets","images", file))
}

ui <- navbarPage(theme = shinytheme("journal"),
                   "Oliver Keyes",
                   tabPanel("About"),
                   tabPanel("Code"),
                   tabPanel("Research"),
                   tabPanel("C.V."),
                   tabPanel("Blog"))

shinyApp(ui, server)