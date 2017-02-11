#Import necessary module
{TextLayer} = require 'TextLayer'

# Set background color
Screen.backgroundColor = "#AAEEFF"

main_width = Screen.width
main_height = Screen.height

calendar = new Layer
	x: Align.center
	y: Align.center(50)
	width: main_width*0.9
	height: main_height*0.8

search_bar = new Layer
	x:Align.center
	y:Align.top(50)
	width: main_width*0.9
	backgroundColor: "#d3d3d3"
	borderRadius: 20

	
keyboard = new Layer
	x: Align.center
	y:Align.bottom
	height: 1000
	width: main_width
	image: "images/keyboard.jpg"
	
keyboard.visible = false

search_bar.onClick ->
	keyboard.visible = true
	choices_plan.visible = true

calendar.onClick ->
	choices_plan.visible = false
	keyboard.visible = false

keyboard.onSwipeDown ->
	keyboard.visible = false
	
choices_plan = new Layer
	x: Align.center
	y: 250
	width: main_width*0.9
	height: 800
	backgroundColor:  "gray"
	borderRadius: 20

#recent searched bar
recentBar = new Layer
	backgroundColor: "white"
	x: 0
	width:main_width*0.9
	
recentBar.draggable = true

recentBar.draggable.constraints = 
	x:0
	y:0
	width: main_width
	height: main_height

recentBar.draggable.overdrag = false

recentBar.states.move = 
	opacity: 0.5
	width: main_width*0.6

recentBar.states.end = 
	x: 0
	y: 0
	width:main_width*0.9
	opacity: 1
	

recentBar.onDragStart ->
	recentBar.animate "move"
	recentImg.visible = false

recentBar.onDragEnd ->
	recentBar.animate "end"
	recentImg.visible = true
	
recentText = new TextLayer
	text: "compiler"
	fontSize: 100
	color: "gray"
	x:100
	y:30
	fontFamily: "Verdanaa"

recentImg = new Layer
	image: "images/recent.png"
	scale: 0.6
	x:Align.right(-150)


	
recentBar.addChild(recentImg)
choices_plan.addChild(recentBar)
recentBar.addChild(recentText)


#suggestion1
sug1 = new Layer
	backgroundColor: "white"
	x: 0
	y: 200
	width:main_width*0.9
	
sug1.draggable = true

sug1.draggable.constraints = 
	x:0
	y:0
	width: main_width
	height: main_height

sug1.draggable.overdrag = false

sug1.states.move = 
	opacity: 0.5
	width: main_width*0.6

sug1.states.end = 
	x: 0
	y: 200
	width:main_width*0.9
	opacity: 1
	

sug1.onDragStart ->
	sug1.animate "move"

sug1.onDragEnd ->
	sug1.animate "end"
		
sug1Text = new TextLayer
	text: "15-418"
	fontSize: 100
	color: "gray"
	x:100
	y:30
	width: 800
	fontFamily: "Verdanaa"

	
choices_plan.addChild(sug1)
sug1.addChild(sug1Text)
		


#sug 2
sug2 = new Layer
	backgroundColor: "white"
	x: 0
	y: 400
	width:main_width*0.9
	
sug2.draggable = true

sug2.draggable.constraints = 
	x:0
	y:0
	width: main_width
	height: main_height

sug2.draggable.overdrag = false

sug2.states.move = 
	opacity: 0.5
	width: main_width*0.6

sug2.states.end = 
	x: 0
	y: 400
	width:main_width*0.9
	opacity: 1
	

sug2.onDragStart ->
	sug2.animate "move"

sug2.onDragEnd ->
	sug2.animate "end"
	
sug2Text = new TextLayer
	text: "15-401"
	fontSize: 100
	color: "gray"
	x:100
	y:30
	width: 800
	fontFamily: "Verdanaa"

	
choices_plan.addChild(sug2)
sug2.addChild(sug2Text)		


#sug3
sug3 = new Layer
	backgroundColor: "white"
	x: 0
	y: 600
	width:main_width*0.9
	
sug3.draggable = true

sug3.draggable.constraints = 
	x:0
	y:0
	width: main_width
	height: main_height
	

sug3.draggable.overdrag = false

sug3.states.move = 
	opacity: 0.5
	width: main_width*0.6

sug3.states.end = 
	x: 0
	y: 600
	width:main_width*0.9
	opacity: 1
	

sug3.onDragStart ->
	sug3.animate "move"

sug3.onDragEnd ->
	sug3.animate "end"

sug3Text = new TextLayer
	text: "33-101"
	fontSize: 100
	color: "gray"
	x:100
	y:30
	width: 800
	fontFamily: "Verdanaa"
		
choices_plan.addChild(sug3)
sug3.addChild(sug3Text)

choices_plan.visible = false
