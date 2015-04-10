library(markdown)
library(shiny)

content_link <- function(file){
  return(file.path(getwd(),"assets","content", file))
}

extLinkPanel <- function(title, link, value){
  divTag <- a(class = "tab-pane", href=link, value)
}
server <- function(input, output){
  output$research_work <- renderDataTable(read.delim(file.path(getwd(),"assets","other", "papers.tsv"),
                                                     as.is = TRUE, header = TRUE),
                                          options = list(autoWidth = FALSE,
                                                         paging = FALSE,
                                                         searching = FALSE))
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
                                     includeMarkdown(content_link("Code.md"))
                                     )
                              )
                            ),
                   tabPanel("Research",
                            fluidRow(
                              column(2),
                              column(6,
                                     includeMarkdown(content_link("Research.md")),
                                     h3("Papers and presentations"),
                                     dataTableOutput("research_work"))
                              )
                            )
                 )
shinyApp(ui, server)