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
                              column(6,
                                     includeMarkdown(content_link("About.md"))
                                     )
                              )
                            ),
                   tabPanel("Code",
                            fluidRow(
                              column(2),
                              column(6, 
                                     includeMarkdown(content_link("About.md"))
                                     )
                              )
                            ),
                   tabPanel("Research",
                            fluidRow(
                              column(2),
                              column(6,
                                     includeMarkdown(content_link("About.md")))
                              )
                            ),
                   tabPanel("C.V."
                            fluidRow(
                              column(2),
                              column(6,
                                     includeMarkdown(content_link("About.md"))
                                     )
                              )
                            ),
                   tabPanel("Blog",
                            fluidRow(
                              column(2),
                              column(6,
                                     includeMarkdown(content_link("About.md"))
                                     )
                              )
                            )
                 )
)
shinyApp(ui, server)