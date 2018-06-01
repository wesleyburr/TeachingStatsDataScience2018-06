# Nicholas Horton
# dynamic enrollment visualizer
# 2018-05-30

library(shiny)
library(dplyr)
library(ggplot2)
library(readr)

fakeenrolls <- read_csv("fakeenrolls.csv") %>%
  select(-id)

# create codebook
description <- c("Department", "Class Number", 
                 "Section Number", "Class Type", "Class Name", "Class Enrollment", 
                 "Total Class Enrollment (includes cross registrants)", "Class Capacity")
codebook <- data.frame(name=names(fakeenrolls), description)
names(codebook) <- c("Variable", "Variable Description")

fakeenrolls <- fakeenrolls %>%
  mutate(numprefix = paste(substring(number, 1, 1), "00", sep=""))

  


# UI
ui <- fluidPage(
  titlePanel("Enrollment Visualizer"),
  sidebarLayout(
    
    # Input(s)
    sidebarPanel(
      checkboxInput("specialtopicshonors", "Include Special Topics/Honors Courses", TRUE),
      checkboxInput("crosslistedenrollment", "Include Cross-Listed Enrollments", TRUE),
      checkboxGroupInput("subject", "Departments",
          choices = unique(sort(as.character(fakeenrolls$subject))),
          selected = unique(sort(as.character(fakeenrolls$subject)))[1]
                        ),
      checkboxGroupInput("type", "Type of course",
                         choices = unique(sort(as.character(fakeenrolls$type))),
                         selected = unique(sort(as.character(fakeenrolls$type)))
      )
    ),
    # Output(s)
    mainPanel(
      
      tabsetPanel(id = "tabspanel", type = "tabs",
                  tabPanel(title = "Data Table", 
                           br(),
                           DT::dataTableOutput(outputId = "coursestable")),
                  tabPanel(title = "Course Enrollments (by dept)", 
                           plotOutput(outputId = "boxplot1"),
                           br(),
                           h4(uiOutput(outputId = "n1"))),
                  tabPanel(title = "Course Enrollments (by dept and level)", 
                           plotOutput(outputId = "boxplot2"),
                           br(),
                           h4(uiOutput(outputId = "n2"))),
                  # New tab panel for Codebook
                  tabPanel("Codebook", 
                           br(),
                           DT::dataTableOutput(outputId = "codebook"))
      )
    )
  )
)

# Server
server <- function(input, output) {
  
  # Create reactive data frame
  courses <- reactive({
    newval <- fakeenrolls %>%
      filter(subject %in% input$subject, type %in% input$type)
    if (input$crosslistedenrollment) {
      newval <- newval %>%
        mutate(displayenroll = totalenroll)
    } else {
      newval <- newval %>%
        mutate(displayenroll = enroll)
    }
    if (! input$specialtopicshonors) {
      newval <- newval %>%
        filter(! number %in% c(290, 390, 490))
    }
    return(newval)
  })
  
  output$boxplot1 <- renderPlot({
    ggplot(courses(), aes(y = displayenroll, x = subject)) + 
      geom_boxplot() + ylab("Enrollment") + coord_flip()
  })
  
  output$boxplot2 <- renderPlot({
    ggplot(courses(), aes(y = displayenroll, x = subject, color = numprefix)) + 
      geom_boxplot() + ylab("Enrollment") + coord_flip()
  })
  
  # Create data table
  output$coursestable <- DT::renderDataTable({
    DT::datatable(data = courses(), 
                  options = list(pageLength = 20), 
                  rownames = FALSE)
  })
  
  # Create data table
  output$codebook <- DT::renderDataTable({
    DT::datatable(data = codebook, 
                  options = list(pageLength = 8), 
                  rownames = FALSE)
  })
}


# Create a Shiny app object
shinyApp(ui = ui, server = server)
