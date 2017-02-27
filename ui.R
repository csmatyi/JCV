library(shiny)

shinyUI(fluidPage(
  titlePanel("censusVis"),

  sidebarLayout(
    sidebarPanel(
		helpText("Creating demographics from the 2020 census"),
		selectInput(
			"var",
			label="Choose a var to display",
			choices=c("Percent Black","Percent White","Percent Hispanic","Percent Asian","Percent Green"),
			selected="Percent Hispanic"
		),
		sliderInput(
			"range",
			label="Range of interests:",
			min=0, max=100, value=c(0,100)
		),
		checkboxGroupInput(
			"cbg",
			label=h3("Checkbox group"),
			choices=list("Waffles"=1,"Tarts"=2,"Eye Scream"=3),
			selected=1
		)

	),
    mainPanel(
		plotOutput("map")
	)
  )

))