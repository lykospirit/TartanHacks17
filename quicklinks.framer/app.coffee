{TextLayer} = require 'TextLayer'

# Set background color
Screen.backgroundColor = "#AAEEFF"

main_width = Screen.width
main_height = Screen.height
	
#Create the background	
quicklinks_background = new BackgroundLayer 
	x:Align.centerX
	y: Align.centerY
	image: "images/CMU-Tartan-Digital.png"

### Initialize numbers ###

textsize = 45
linksborderRadius = 15
linksscreenw = 0.9*Screen.width
linksscreenh = 0.8*Screen.height
linksscreenX0 = (Screen.width - linksscreenw)/2
linksscreenY0 = (Screen.height - linksscreenh)/2

### Create main page ###

mylinksPage = new PageComponent
	x: Screen.x
	y: Screen.y
	width: Screen.width
	height: Screen.height
	clip: false
	contentInset:
		right: 65
mylinksPage.draggable.enabled = false

### QUICKLINKS 1 ###

quicklinksscreen = new Layer
	parent: mylinksPage.content
	x: linksscreenX0
	y: linksscreenY0
	width: linksscreenw
	height: linksscreenh
	backgroundColor: "#FFF"
	borderRadius: linksborderRadius

# Quicklinks images and text 

imgtext = 35

linksname = new TextLayer
    parent: quicklinksscreen
    x: 0.8*(linksscreenX0 + linksborderRadius)
    y: 0.03*linksscreenh
    text: "Important Contacts"
    color: "#000"
    textAlign: "left"
    fontSize: 80
    width: linksscreenw - 2 * linksborderRadius
    height: 100
    fontFamily: "OpenSans-bold"

police = new Layer
	parent: quicklinksscreen
	x: 3*linksscreenw/20
	y: 300
	width: 3*linksscreenw/10
	height: 3*linksscreenw/10
	image: "images/quicklinks_police.png"

policetext = new TextLayer
	parent: quicklinksscreen
	midX: 3*linksscreenw/10
	y: police.y + police.height + imgtext
	text: "Campus Police"
	width: 3*linksscreenw/10
	height: 3*linksscreenw/10
	color: "#000"
	textAlign: "center"
	fontSize: 45
	width: police.width
	height: 50
	fontFamily: "OpenSans"

housing = new Layer
	parent: quicklinksscreen
	x: police.x + police.width + linksscreenw/10
	y: 300
	width: 3*linksscreenw/10
	height: 3*linksscreenw/10
	image: "images/quicklinks_housing.png"

housingtext = new TextLayer
	parent: quicklinksscreen
	midX: 7*linksscreenw/10
	y: housing.y + housing.height + imgtext
	text: "Housing Services"
	width: 3*linksscreenw/10
	height: 3*linksscreenw/10
	color: "#000"
	textAlign: "center"
	fontSize: 45
	width: housing.width
	height: 50
	fontFamily: "OpenSans"

health = new Layer
	parent: quicklinksscreen
	x: 3*linksscreenw/20
	y: police.y + police.height + 175
	width: 3*linksscreenw/10
	height: 3*linksscreenw/10
	image: "images/quicklinks_health.png"

healthtext = new TextLayer
	parent: quicklinksscreen
	midX: 3*linksscreenw/10
	y: health.y + health.height + imgtext
	text: "Health Services"
	width: 3*linksscreenw/10
	height: 3*linksscreenw/10
	color: "#000"
	textAlign: "center"
	fontSize: 45
	width: health.width
	height: 50
	fontFamily: "OpenSans"

caps = new Layer
	parent: quicklinksscreen
	x: health.x + health.width + linksscreenw/10
	y: housing.y + housing.height + 175
	width: 3*linksscreenw/10
	height: 3*linksscreenw/10
	image: "images/quicklinks_caps.png"

capstext = new TextLayer
	parent: quicklinksscreen
	midX: 7*linksscreenw/10
	y: caps.y + caps.height + imgtext
	text: "CaPS"
	width: 3*linksscreenw/10
	height: 3*linksscreenw/10
	color: "#000"
	textAlign: "center"
	fontSize: 45
	width: caps.width
	height: 50
	fontFamily: "OpenSans"
	
oie = new Layer
	parent: quicklinksscreen
	x: 3*linksscreenw/20
	y: health.y + health.height + 175
	width: 3*linksscreenw/10
	height: 3*linksscreenw/10
	image: "images/quicklinks_oie.png"

oietext = new TextLayer
	parent: quicklinksscreen
	midX: 3*linksscreenw/10
	y: oie.y + oie.height + imgtext
	text: "OIE"
	width: 3*linksscreenw/10
	height: 3*linksscreenw/10
	color: "#000"
	textAlign: "center"
	fontSize: 45
	width: oie.width
	height: 50
	fontFamily: "OpenSans"

escort = new Layer
	parent: quicklinksscreen
	x: oie.x + oie.width + linksscreenw/10
	y: caps.y + caps.height + 175
	width: 3*linksscreenw/10
	height: 3*linksscreenw/10
	image: "images/quicklinks_escort.png"

escorttext = new TextLayer
	parent: quicklinksscreen
	midX: 7*linksscreenw/10
	y: escort.y + escort.height + imgtext
	text: "Late Night Escort"
	width: 3*linksscreenw/10
	height: 3*linksscreenw/10
	color: "#000"
	textAlign: "center"
	fontSize: 45
	width: caps.width
	height: 50
	fontFamily: "OpenSans"
	
### CAMPUS MAP ###

campusmapscreen = new Layer
	parent: mylinksPage.content
	x: 3 * linksborderRadius + linksscreenw + linksscreenX0
	y: linksscreenY0
	width: linksscreenw
	height: linksscreenh
	backgroundColor: "#FFF"
	borderRadius: linksborderRadius

linksname = new TextLayer
    parent: campusmapscreen
    x: 0.8*(linksscreenX0 + linksborderRadius)
    y: 0.03*linksscreenh
    text: "Campus Maps"
    color: "#000"
    textAlign: "left"
    fontSize: 80
    width: linksscreenw - 2 * linksborderRadius
    height: 100
    fontFamily: "OpenSans-bold"

mapimage = new Layer
	parent: campusmapscreen
	x: 0.8*(linksscreenX0 + linksborderRadius)
	y: 0.03*linksscreenh + 150
	image: "images/CMUmap.png"
	width: linksscreenw - (10 * linksborderRadius)
	height: 800

printimage = new Layer
	parent: campusmapscreen
	x: 0.8*(linksscreenX0 + linksborderRadius)
	y: mapimage.height + 0.03*linksscreenh + 250
	image: "images/printmap.png"
	width: linksscreenw - (10 * linksborderRadius)
	height: 800

### CAMPUS MAP FULLSCREEN ###

### WHEN TAPPED THE FULLSCREEN SHOULD APPEAR ###

mapimage.onClick (event, layer) ->
	mapw = 3296
	maph = 2302
	layer.visible = false
	MapBG = layer.copy()
	MapBG.frame = layer.screenFrame
	MapBG.bringToFront()
	# Ignore events and show the image
	MapBG.visible = true 
	MapBG.animate
		properties:
			scale: main_width / mapw
			midX: main_width/2
			midY: main_height/2
			borderRadius:0
			curve: "spring(400, 30, 20)"
	MapBG.parent = null
	MapBG.width = mapw*(main_height/maph)
	MapBG.height = main_height
	MapBG.centerX()
	MapBG.centerY()
	MapBG.draggable.enabled = true
	MapBG.draggable.constraints =
		x: -(MapBG.width-main_width)
		y: -(MapBG.height-main_height)
		width: (MapBG.width*2)-main_width
		height: (MapBG.height*2)-main_height

	MapBG.pinchable.maxScale = 5
	MapBG.pinchable.enabled = true
	MapBG.pinchable.rotate = false
	
	MapBG.onScaleEnd ->
		MapBG.animate
			properties:
				scale: 1

	mylinksPage.visible = false
	campusmapscreen.visible = false
	quicklinksscreen.visible = false
	MapBG.onDoubleClick (event, layer) ->
		mylinksPage.visible = true
		campusmapscreen.visible = true
		quicklinksscreen.visible = true
		layer.animate
			properties:
				x: mapimage.x
				y: mapimage.y
				width: mapimage.width
				height: mapimage.height
				curve: "spring(400, 30, 20)"
		mapimage.visible = true
		layer.visible = false

### PRINT MAP FULLSCREEN ###

### WHEN TAPPED THE FULLSCREEN SHOULD APPEAR ###

printimage.onClick (event, layer) ->
	printw = 2550
	printh = 1800
	layer.visible = false
	PrintBG = layer.copy()
	PrintBG.frame = layer.screenFrame
	PrintBG.bringToFront()
	# Ignore events and show the image
	PrintBG.visible = true 
	PrintBG.animate
		properties:
			scale: main_width / printw
			midX: main_width/2
			midY: main_height/2
			borderRadius:0
			curve: "spring(400, 30, 20)"
	PrintBG.parent = null
	PrintBG.width = printw*(main_height/printh)
	PrintBG.height = main_height
	PrintBG.centerX()
	PrintBG.centerY()
	PrintBG.draggable.enabled = true
	PrintBG.draggable.constraints =
		x: -(PrintBG.width-main_width)
		y: -(PrintBG.height-main_height)
		width: (PrintBG.width*2)-main_width
		height: (PrintBG.height*2)-main_height

	PrintBG.pinchable.maxScale = 5
	PrintBG.pinchable.enabled = true
	PrintBG.pinchable.rotate = false
	
	PrintBG.onScaleEnd ->
		PrintBG.animate
			properties:
				scale: 1

	mylinksPage.visible = false
	campusmapscreen.visible = false
	quicklinksscreen.visible = false
	PrintBG.onDoubleClick (event, layer) ->
		mylinksPage.visible = true
		campusmapscreen.visible = true
		quicklinksscreen.visible = true
		layer.animate
			properties:
				x: printimage.x
				y: printimage.y
				width: printimage.width
				height: printimage.height
				curve: "spring(400, 30, 20)"
		printimage.visible = true
		layer.visible = false


