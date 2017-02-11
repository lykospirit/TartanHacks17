#Import necessary module
{TextLayer} = require 'TextLayer'

# Set background color
Screen.backgroundColor = "#AAEEFF"

main_width = Screen.width
main_height = Screen.height
	
menu_bar = new Layer
	x: 20
	y: 20
	borderRadius: 20


NavBar = new Layer
	width: main_width
	height: main_height
	backgroundColor: "transparent"
	x:-2000
		
	
	
my_info = new Layer
	x: 0
	y: 300
	width: main_width
	height: (main_height-300)/5
	backgroundColor: "#A91E31"

myInfo_text = new TextLayer
	text: "MY INFO"
	fontSize: 100
	fontFamily: "BEBAS"
	color: "white"
	x: 550
	y: 150
	width:600
	
	
NavBar.addChild(my_info)
my_info.addChild(myInfo_text)

courses = new Layer
	x: 0
	y:300+(main_height-300)/5
	width: main_width
	height: (main_height-300)/5
	backgroundColor: "#DB264D"
	
courses_text = new TextLayer
	text: "COURSES"
	fontSize: 100
	fontFamily: "BEBAS"
	color: "black"
	x: 550
	y: 150
	

NavBar.addChild(courses)
courses.addChild(courses_text)

campus_life = new Layer
	x: 0
	y:300+2*(main_height-300)/5
	width: main_width
	height: (main_height-300)/5
	backgroundColor: "#A91E31"

campusLife_text = new TextLayer
	text: "CAMPUS LIFE"
	fontSize: 100
	fontFamily: "BEBAS"
	color: "white"
	width: 800
	x: 500
	y: 150
	
NavBar.addChild(campus_life)
campus_life.addChild(campusLife_text)

QuickLinks= new Layer
	x: 0
	y:300+3*(main_height-300)/5
	width: main_width
	height: (main_height-300)/5
	backgroundColor: "#DB264D"
	
QuickLinks_text = new TextLayer
	text: "QUICK LINKS"
	fontSize: 100
	fontFamily: "BEBAS"
	color: "black"
	width: 800
	x: 500
	y: 150
	
NavBar.addChild(QuickLinks)
QuickLinks.addChild(QuickLinks_text)


NavBar.states.inView = 
	x: 0

menu_bar.onClick ->
	NavBar.animate "inView"






