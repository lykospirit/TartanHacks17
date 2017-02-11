#Import necessary module
{TextLayer} = require 'TextLayer'

#Create the background	
background = new BackgroundLayer 
	x:Align.centerX
	y: Align.centerY
	image: "images/CMU-Tartan-Digital.png"

main_width = Screen.width
main_height = Screen.height

### LISTING OF LAYERS - MENUBAR
- NavBar
-- menu-bar; bar1; bar2; bar3
-- menu_my_info
--- myInfo_text
-- menu_courses
--- menu_courses_text
-- menu_campuslife
--- menu_campuslife_text
-- menu_quicklinks
--- menu_quicklinks_text
###

bar_width = main_width
bar_height = (main_height - 240)/4

# Menu Button
menu_bar = new Layer
	x: 20
	y: 20
	borderRadius: 20
	backgroundColor: "grey"
	opacity: 0.75

bar1 = new Layer
	backgroundColor: "black"
	width:100
	height:3
	y: 100
	x: 65

bar2 = new Layer
	backgroundColor: "black"
	width:100
	height:3
	y: 120
	x: 65

bar3 = new Layer
	backgroundColor: "black"
	width:100
	height:3
	y: 140
	x: 65

# Whole thingy
NavBar = new Layer
	width: main_width
	height: main_height
	backgroundColor: "transparent"
	x:-2000

### 1 My info button ###

my_info = new Layer
	x: 0
	y: 240 + 0 * bar_height
	width: main_width
	height: bar_height
	backgroundColor: "#A91E31"

myInfo_text = new TextLayer
	parent: my_info
	color: "white"
	midX: bar_width/2
	midY: bar_height/2
	text: "MY INFO"
	textAlign: "center"
	width: bar_width
	height: 150
	fontSize: 100
	fontFamily: "OpenSans"
	
NavBar.addChild(my_info)
my_info.addChild(myInfo_text)

### 2 Courses button ###

courses = new Layer
	x: 0
	y: 240 + 1 * bar_height
	width: main_width
	height: bar_height
	backgroundColor: "#DB264D"

courses_text = new TextLayer
	parent: courses
	color: "black"
	midX: bar_width/2
	midY: bar_height/2
	text: "COURSES"
	textAlign: "center"
	width: bar_width
	height: 150
	fontSize: 100
	fontFamily: "OpenSans"

NavBar.addChild(courses)
courses.addChild(courses_text)

### 3 Campus life button ###

campuslife = new Layer
	x: 0
	y: 240 + 2 * bar_height
	width: main_width
	height: bar_height
	backgroundColor: "#A91E31"

campuslife_text = new TextLayer
	parent: campuslife
	color: "white"
	midX: bar_width/2
	midY: bar_height/2
	text: "CAMPUS LIFE"
	textAlign: "center"
	width: bar_width
	height: 150
	fontSize: 100
	fontFamily: "OpenSans"
	
NavBar.addChild(campuslife)
campuslife.addChild(campuslife_text)

### 4 Quicklinks button ###

quicklinks= new Layer
	x: 0
	y: 240 + 3 * bar_height
	width: main_width
	height: bar_height
	backgroundColor: "#DB264D"

quicklinks_text = new TextLayer
	parent: quicklinks
	color: "black"
	midX: bar_width/2
	midY: bar_height/2
	text: "QUICK LINKS"
	textAlign: "center"
	width: bar_width
	height: 150
	fontSize: 100
	fontFamily: "OpenSans"

NavBar.addChild(quicklinks)
quicklinks.addChild(quicklinks_text)

### Handle navbar movements ###

NavBar.states.inView = 
	x: 0

NavBar.states.hide = 
	x: -2000
	
navBarView = false

menu_bar.onClick ->
	if not navBarView
		NavBar.animate "inView"
		navBarView = true
	if navBarView
		NavBar.animate "hide"
		navBarView = false
		