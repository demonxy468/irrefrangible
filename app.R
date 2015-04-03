library(markdown)
library(shiny)
library(shinythemes)

content_link <- function(file){
  return(file.path(getwd(),"assets","content", file))
}


server <- function(input, output){
}

ui <- navbarPage(title = "Oliver Keyes", theme = "theme/theme.css",                 
                   tabPanel("About",
                            fluidRow(
                              column(2),
                              column(6, includeMarkdown(content_link("About.md"))))),
                   tabPanel("Code"),
                   tabPanel("Research"),
                   tabPanel("C.V."),
                   tabPanel("Blog")
)
shinyApp(ui, server)