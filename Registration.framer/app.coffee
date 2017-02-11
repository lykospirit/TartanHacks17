#Import necessary module
{TextLayer} = require 'TextLayer'

# Set background color
Screen.backgroundColor = "#aaeeff"

main_width = Screen.width
main_height = Screen.height

registration = new Layer
	width: main_width
	height: main_height
	backgroundColor: "transparent"

Registered = new Layer
	x: Align.center
	y:70
	width: main_width*0.9
	height: main_height*0.6
	borderRadius: 20
	print(main_width*0.9)
	print(main_height*0.6)

Waitlist = new Layer
	x: Align.center
	y: Align.bottom(-250)
	width: main_width*0.9
	height: main_height*0.25
	borderRadius: 20

	