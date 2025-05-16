library(shiny)
ui <- fluidPage(
  titlePanel("Shiny Elements Example"),
  sidebarLayout(
    sidebarPanel(
      numericInput("numInput", "Enter a number:", value = 0),
      sliderInput("numSlider", "Select a value:", min = 0, max = 100, value = 50),
      sliderInput("numSlider", "Select a value:", min = 0, max = 100, value = c(50,60)),
      actionButton("actionBtn", "Click Me"),
      checkboxInput("singleCheckbox", "Check me"),
      checkboxGroupInput("multiCheckbox", "Select options:",
                         choices = c("Option 1", "Option 2", "Option 3")),
      radioButtons("rb", "Choose one:",
                   choiceNames = list(
                     icon("angry"),
                     icon("smile"),
                     icon("sad-tear")
                   ),
                   choiceValues = list("angry", "happy", "sad")
      ),
      radioButtons("radioBtn", "Choose one:",
                   choices = c("Option A", "Option B", "Option C"), selected = NULL),
      selectInput("dropdownMenu", "Choose one:",
                  choices = c("Option 1", "Option 2", "Option 3"), selected = NULL),
      selectInput("dropdownMenu", "Choose one:",
                  choices = c("Option 1", "Option 2", "Option 3"), selected = NULL,multiple = TRUE),
      textInput("txtInput", "Enter text:"),
      textAreaInput("story", "Tell me about yourself", rows = 3),
      dateInput("dob", "When were you born?"),
      dateRangeInput("holiday", "When do you want to go on vacation next?"),
      fileInput("upload", "Upload csv file", accept = ".csv")
    ),
    mainPanel(
    )
  )
)

server <- function(input, output, session) {
}
shinyApp(ui, server)