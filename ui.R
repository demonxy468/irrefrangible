library(shiny)
library(shinythemes)
library(markdown)
img_link <- function(file){
  return(file.path(getwd(),"assets","images", file))
}
shinyUI(navbarPage(theme = shinytheme("journal"),
                   "Oliver Keyes",
                   tabPanel("About"),
                   tabPanel("Code"),
                   tabPanel("Research"),
                   tabPanel("C.V."),
                   tabPanel("Blog")
                   )
        )
)