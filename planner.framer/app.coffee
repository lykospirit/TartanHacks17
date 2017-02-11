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
	
keyboard = new Layer
	x: Align.center
	y:Align.bottom
	height: 1000
	width: main_width
	
keyboard.visible = false

search_bar.onClick ->
	keyboard.visible = true
	