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
infoborderRadius = 15
infoscreenw = 0.9*main_width
infoscreenh = 0.8*main_height
infoscreenX0 = (main_width - infoscreenw)/2
infoscreenY0 = (main_height - infoscreenh)/2

### Create main page ###

myInfoPage = new PageComponent
	x: Screen.x
	y: Screen.y
	width: main_width
	height: main_height
	clip: false
	contentInset:
		right: 65
myInfoPage.draggable.enabled = false

### INFO SCREEN 1 ###

infoscreen1 = new Layer
	parent: myInfoPage.content
	x: infoscreenX0
	y: infoscreenY0
	width: infoscreenw
	height: infoscreenh
	backgroundColor: "#FFF"
	borderRadius: infoborderRadius

infoname1 = new TextLayer
    parent: infoscreen1
    x: 0.8*(infoscreenX0 + infoborderRadius)
    y: 0.03*infoscreenh
    text: "View and Update My Info"
    color: "#000"
    textAlign: "left"
    fontSize: 80
    width: infoscreenw - 2 * infoborderRadius
    height: 100
    fontFamily: "OpenSans-bold"

infolabels = new TextLayer
    parent: infoscreen1
    x: infoname1.x
    y: 0.03*infoscreenh + 150
    text: '''Name
    Preferred Name
    Race/Ethnicity
    Gender
    Birth Date
    Directory Release
    Mobile Phone
    Carrier
    Email
    Personal Email
    US Citizen
    F1/J1 Student Status
    Fraternity
    Athletics
    VA Benefits
    '''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: infoscreenw - 2 * infoborderRadius
    height: (infoscreen1.height - infoname1.height)*0.47
    fontFamily: "OpenSans-bold"

infotrue = new TextLayer
    parent: infoscreen1
    x: infoscreen1.width/2
    y: 0.03*infoscreenh + 150
    text: '''Andrew Carnegie
    Mellon
    White
    Male
    25 Nov 1835
    Yes
    412-123-4567
    Pigeons
    acarnegie@andrew.cmu
    andrew@gmail.com
    Yes
    N/A
    CMU
    Hackathons
    No
    '''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: infoscreenw - 2 * infoborderRadius
    fontFamily: "OpenSans"

permaddresslabel = new TextLayer
    parent: infoscreen1
    x: infolabels.x
    y: infolabels.y + infolabels.height
    text: '''Permanent address'''
    color: "#000"
    textAlign: "left"
    fontSize: 45
    width: infoscreenw - 2 * infoborderRadius
    height: textsize*1.5
    fontFamily: "OpenSans-bold"

permaddresstrue = new TextLayer
    parent: infoscreen1
    x: infolabels.x
    y: permaddresslabel.y + permaddresslabel.height
    text: '''5032 Forbes Avenue
    Pittsburgh, PA 15289'''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: infoscreenw - 2 * infoborderRadius
    height: textsize*4
    fontFamily: "OpenSans"

offcampuslabel = new TextLayer
    parent: infoscreen1
    x: infolabels.x
    y: permaddresstrue.y + permaddresstrue.height
    text: '''Off Campus Residence'''
    color: "#000"
    textAlign: "left"
    fontSize: 45
    width: infoscreenw - 2 * infoborderRadius
    height: textsize*1.5
    fontFamily: "OpenSans-bold"

offcampustrue = new TextLayer
    parent: infoscreen1
    x: infolabels.x
    y: offcampuslabel.y + offcampuslabel.height
    text: '''5140 Forbes Avenue
    Pittsburgh, PA 15289'''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: infoscreenw - 2 * infoborderRadius
    fontFamily: "OpenSans"

campuslabel = new TextLayer
    parent: infoscreen1
    x: infolabels.x
    y: offcampustrue.y + offcampustrue.height
    text: '''Campus Address'''
    color: "#000"
    textAlign: "left"
    fontSize: 45
    width: infoscreenw - 2 * infoborderRadius
    height: textsize*1.5
    fontFamily: "OpenSans-bold"

campustrue = new TextLayer
    parent: infoscreen1
    x: infolabels.x
    y: campuslabel.y + campuslabel.height
    text: '''5032 Forbes Avenue SMC 0000
    Pittsburgh, PA 15289-0000'''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: infoscreenw - 2 * infoborderRadius
    fontFamily: "OpenSans"

### INFO SCREEN 2 ###

infoscreen2 = new Layer #screens.secondScreen
	parent: myInfoPage.content
	x: 3*infoborderRadius + infoscreenw + infoscreenX0
	y: infoscreenY0
	width: infoscreenw
	height: infoscreenh
	backgroundColor: "#FFF"
	borderRadius: infoborderRadius

infoname2 = new TextLayer
    parent: infoscreen2
    x: 0.8*(infoscreenX0 + infoborderRadius)
    y: 0.03*infoscreenh
    text: "Student ID & Card ID"
    color: "#000"
    textAlign: "left"
    fontSize: 80
    width: infoscreenw - 2 * infoborderRadius
    height: (infoscreen2.height)*0.15
    fontFamily: "OpenSans-bold" 

iddescription = new TextLayer
    parent: infoscreen2
    x: infoname2.x
    y: 0.03*infoscreenh + 150
    text: '''If you believe your Student ID number is incorrect,
    you can submit a Student ID Number Change Form
    (http://www.cmu.edu/hub/registration/docs/id-
    change.pdf) to The HUB. You will need official
    documentation to make this change.
    '''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: infoscreenw - 2 * infoborderRadius
    height: (infoscreen2.height - infoname2.height)*0.2
    fontFamily: "OpenSans"

idlabels = new TextLayer
    parent: infoscreen2
    x: infoname2.x
    y: iddescription.y + iddescription.height
    text: '''Student ID number
    
    Card ID'''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: infoscreenw - 2 * infoborderRadius
    height: (infoscreen2.height - infoname2.height)*0.15
    fontFamily: "OpenSans-bold"

idtrue = new TextLayer
    parent: infoscreen2
    x: infoscreen2.width/2
    y: iddescription.y + iddescription.height
    text: '''123456789
    
    876543210'''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: infoscreenw - 2 * infoborderRadius
    fontFamily: "OpenSans"

### INFO SCREEN 3 ###

infoscreen3 = new Layer #screens.secondScreen
	parent: myInfoPage.content
	x: 5*infoborderRadius + 2*infoscreenw + infoscreenX0
	y: infoscreenY0
	width: infoscreenw
	height: infoscreenh
	backgroundColor: "#FFF"
	borderRadius: infoborderRadius
	
infoname4 = new TextLayer
    parent: infoscreen3
    x: 0.8*(infoscreenX0 + infoborderRadius)
    y: 0.03*infoscreenh
    text: "Useful Contacts"
    color: "#000"
    textAlign: "left"
    fontSize: 80
    width: infoscreenw - 2 * infoborderRadius
    height: 100
    fontFamily: "OpenSans-bold" 

contactlabels = new TextLayer
    parent: infoscreen3
    x: infoname4.x
    y: 0.03*infoscreenh + 150
    text: '''Academic Advisor
    
    
    Associate Dean
    
    
    Hub Liaison
    
    
    Student Affairs Contact'''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: infoscreenw - 2 * infoborderRadius
    height: (infoscreen3.height - infoname4.height)*0.15
    fontFamily: "OpenSans-bold"

contacttrue = new TextLayer
    parent: infoscreen3
    x: infoscreen3.width/2
    y: 0.03*infoscreenh + 150
    text: '''Andrew Carnegie
    acarnegie, 123-4567
    
    Andrew Carnegie
    acarnegie, 123-4567
    
    Andrew Carnegie
    acarnegie, 123-4567
    
    Andrew Carnegie
    acarnegie, 123-4567'''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: infoscreenw - 2 * infoborderRadius
    fontFamily: "OpenSans"