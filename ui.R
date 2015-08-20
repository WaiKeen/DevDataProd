library(shiny)
shinyUI(pageWithSidebar(
    headerPanel('Predicting the Mile-per-Gallon of a vehicle'),
    sidebarPanel(
        h3('Vehicle Specification'),
        radioButtons('tt',label = 'Tranmission Type', c('Automatic' = 0, 'Manual' = 1)),
        sliderInput('wt','Weight of Vehicle (lbs)',value = 1500,min=1000,max=4000,step=250),
        numericInput('qsec', 'Quartermile Time (seconds)',value = 18,min=15,max=25,step=0.5),

        h5('Documentation'),
        h6('1. Select the Transmission Type between Manual or Automatic'),
        h6('2. Move the slider to the closest Weight of the Vehicle'),
        h6('3. Input the Quartermile Time Performance'),
        br(),
        p('The application with predict the Miles-per-Gallon (MPG) of the Vehicle as you select the vehicle specifications')

        ),
    
    mainPanel(
        h3('Description of Application'),
        h5('This application is to predict the Mile-per-Gallon(MPG) of a vehicle based on the weight, transmission type and quartermile time performance.'),
        h4('Transmission Type:'),
        verbatimTextOutput('tt'),
        h4('Vehicle Weight:'),
        verbatimTextOutput('wt'),
        h4('Quartermile Time:'),
        verbatimTextOutput('qsec'),
     
        h3('Predicted Miles-per-Gallon:'),
        verbatimTextOutput('mpg'),
        
        p('The prediction model is based on the mtcars dataset using linear regression with MPG as the outcome and Transmission Type (am), Weight (wt) and Quartermile Time (qsec) as the factors.')
    )
))