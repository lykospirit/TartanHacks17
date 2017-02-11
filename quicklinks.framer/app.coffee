{TextLayer} = require 'TextLayer'

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
#quicklinksscreen.draggable.vertical = false

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

linkslabels = new TextLayer
    parent: quicklinksscreen
    x: linksname.x
    y: 0.03*linksscreenh + 150
    text: '''Pittsburgh Police
    CMU Police
    Housing Services
    Health Services
    Escort Services
    Amnesty Hotline
    '''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: linksscreenw - 2 * linksborderRadius
    height: (quicklinksscreen.height - linksname.height)*0.47
    fontFamily: "OpenSans-semibold"

linkstrue = new TextLayer
    parent: quicklinksscreen
    x: quicklinksscreen.width/2
    y: 0.03*linksscreenh + 150
    text: '''123-456-7890
    123-456-7890
    123-456-7890
    123-456-7890
    123-456-7890
    123-456-7890
    '''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: linksscreenw - 2 * linksborderRadius
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
    text: "Campus Map"
    color: "#000"
    textAlign: "left"
    fontSize: 80
    width: linksscreenw - 2 * linksborderRadius
    height: 100
    fontFamily: "OpenSans-bold"

image = new Layer
	parent: campusmapscreen
	x: 0.8*(linksscreenX0 + linksborderRadius)
	y: 0.03*linksscreenh + 150
	image: "images/CMUmap.png"
	width: linksscreenw - (10 * linksborderRadius)
	height: 800

### CAMPUS MAP FULLSCREEN ###

# Set Up

fwidth = Framer.Device.screen.width
fheight = Framer.Device.screen.height

# BG

mapfullscreen = new Layer
	backgroundColor: "#252a30"
	width: fwidth*2
	height: fheight*2
	z:-350
	visible: false
mapfullscreen.centerX()
mapfullscreen.centerY()

# Map

MapBG=new Layer
	parent: mapfullscreen
	width: 3459
	height: 3665
	image: "images/CMUmap.png"
	z:-250

MapBG.centerX()
MapBG.centerY()
MapBG.draggable.enabled = true
MapBG.draggable.constraints =
	x:-(MapBG.width-fwidth)
	y:-(MapBG.height-fheight)
	width: (MapBG.width*2)-fwidth
	height: (MapBG.height*2)-fheight

MapBG.pinchable.maxScale = 3
MapBG.pinchable.enabled = true
MapBG.pinchable.rotate = false

MapBG.onScaleEnd ->
	MapBG.animate
		properties:
			scale:1

# UI

UiLayer = new Layer
	parent: mapfullscreen
	width: fwidth
	height: fheight
	backgroundColor: "transparent"
	image: "images/CMUmap.png"

UiLayer.ignoreEvents=true

# Map Events and Interactive States

MapBG.states.add
	focus:
		x:-1301
		y:-965

MapBG.states.animationOptions=
	delay:0.5

### WHEN TAPPED THE FULLSCREEN SHOULD APPEAR ###

image.onTap ->
	print "tap"
	mapfullscreen.visible = true
