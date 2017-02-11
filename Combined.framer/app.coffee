#Import necessary module
{TextLayer} = require 'TextLayer'

#Create the background	
background = new BackgroundLayer 
	x:Align.centerX
	y: Align.centerY
	image: "images/CMU-Tartan-Digital.png"

main_width = Screen.width
main_height = Screen.height

sioBIG = new Layer
	image: "images/sio_text.png"
	midX: main_width/2
	midY: main_height/2
	width: 1200
	height: 800

### LISTING OF LAYERS - infopages
- myInfoPage
-- infoscreen1
--- infoname1
--- infolabels
--- infotrue
--- permaddresslabel
--- permaddresstrue
--- offcampuslabel
--- offcampustrue
--- campuslabel
--- campustrue
-- infoscreen2
--- infoname2
--- iddescription
--- idlabels
--- idtrue
-- infoscreen3
--- infoname4
--- contactlabels
--- contacttrue
###

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




### LISTING OF LAYERS - campuslife
- campuslifepage
-- campuslife1
--- housingname
--- currenthousinglabel
--- currenthousinglabels
--- currenthousingtrue
--- futurehousinglabel
--- campustrue
-- campuslife2
--- mealplanname
--- mealplanlabels
--- mealplantrue
-- campuslife3
--- diningname
--- dininglabels
-- campuslife4
--- mailboxname
--- smclabels
--- smctrue
--- packagedescriptions
-- campuslife5
--- printingname
--- printquotalabels
--- printquotatrue
-- campuslife6
--- aoaname
--- ttolabel
--- ttotrue
--- codlabel
--- codtrue
###

### Initialize numbers ###

textsize = 45
campuslifeborder = 15
campuslifew = 0.9*main_width
campuslifeh = 0.8*main_height
campuslifeX0 = (main_width - campuslifew)/2
campuslifeY0 = (main_height - campuslifeh)/2

### Create main page ###

campuslifepage = new PageComponent
	x: Screen.x
	y: Screen.y
	width: main_width
	height: main_height
	clip: false
	contentInset:
		right: 65
campuslifepage.draggable.enabled = false

### HOUSING AND DINING PLANS ###

campuslife1 = new Layer
	parent: campuslifepage.content
	x: campuslifeX0
	y: campuslifeY0
	width: campuslifew
	height: campuslifeh
	backgroundColor: "#FFF"
	borderRadius: campuslifeborder

housingname = new TextLayer
    parent: campuslife1
    x: 0.8*(campuslifeX0 + campuslifeborder)
    y: 0.03*campuslifeh
    text: "Housing Assignment"
    color: "#000"
    textAlign: "left"
    fontSize: 80
    width: campuslifew - 2 * campuslifeborder
    height: 100
    fontFamily: "OpenSans-bold"

currenthousinglabel = new TextLayer
    parent: campuslife1
    x: housingname.x
    y: 0.03*campuslifeh + 150
    text: '''Current Semester - Spring 2017'''
    color: "#000"
    textAlign: "left"
    fontSize: 45
    width: campuslifew - 2 * campuslifeborder
    height: textsize*1.5
    fontFamily: "OpenSans-bold"

currenthousinglabels = new TextLayer
    parent: campuslife1
    x: housingname.x
    y: currenthousinglabel.y + currenthousinglabel.height + 20
    text: '''Location
    Room Type
    Semester Cost
    Roommate
    '''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: campuslifew - 2 * campuslifeborder
    height: 300
    fontFamily: "OpenSans-bold"

currenthousingtrue = new TextLayer
    parent: campuslife1
    x: campuslife1.width/2
    y: currenthousinglabel.y + currenthousinglabel.height + 20
    text: '''Resnik House
    Standard Double
    $3000.00
    Subra Suresh (ssures)'''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: campuslifew - 2 * campuslifeborder
    height: 300
    fontFamily: "OpenSans"

futurehousinglabel = new TextLayer
    parent: campuslife1
    x: currenthousinglabels.x
    y: currenthousinglabels.y + currenthousinglabels.height
    text: '''Future Semesters'''
    color: "#000"
    textAlign: "left"
    fontSize: 45
    width: campuslifew - 2 * campuslifeborder
    height: textsize*1.5
    fontFamily: "OpenSans-bold"

campustrue = new TextLayer
    parent: campuslife1
    x: currenthousinglabels.x
    y: futurehousinglabel.y + futurehousinglabel.height + 20
    text: '''You are not assigned to a campus residence hall in
    the next semester.'''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: campuslifew - 2 * campuslifeborder
    fontFamily: "OpenSans"

### MEAL PLAN ASSIGNMENT ###

campuslife2 = new Layer #screens.secondScreen
	parent: campuslifepage.content
	x: 3*campuslifeborder + campuslifew + campuslifeX0
	y: campuslifeY0
	width: campuslifew
	height: campuslifeh
	backgroundColor: "#FFF"
	borderRadius: campuslifeborder

mealplanname = new TextLayer
    parent: campuslife2
    x: 0.8*(campuslifeX0 + campuslifeborder)
    y: 0.03*campuslifeh
    text: "Meal Plan Assignment"
    color: "#000"
    textAlign: "left"
    fontSize: 80
    width: campuslifew - 2 * campuslifeborder
    height: 100
    fontFamily: "OpenSans-bold"

mealplanlabels = new TextLayer
    parent: campuslife2
    x: mealplanname.x
    y: 0.03*campuslifeh + 150
    text: '''Red 9 Flex Dollars

Dinextra

DInextra Bonus

9-Red 22 Meals

Red Guest Passes'''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: campuslifew - 2 * campuslifeborder
    height: (campuslife2.height - mealplanname.height)*0.15
    fontFamily: "OpenSans-bold"

mealplantrue = new TextLayer
    parent: campuslife2
    x: campuslife2.width/2
    y: 0.03*campuslifeh + 150
    text: '''$900.00

    $0.00

    $0.00

    22 meals

    2 meals'''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: campuslifew - 2 * campuslifeborder
    fontFamily: "OpenSans"

### DINING OPTIONS ###

campuslife3 = new Layer #screens.secondScreen
	parent: campuslifepage.content
	x: 5*campuslifeborder + 2*campuslifew + campuslifeX0
	y: campuslifeY0
	width: campuslifew
	height: campuslifeh
	backgroundColor: "#FFF"
	borderRadius: campuslifeborder

diningname = new TextLayer
    parent: campuslife3
    x: 0.8*(campuslifeX0 + campuslifeborder)
    y: 0.03*campuslifeh
    text: "Dining Options"
    color: "#000"
    textAlign: "left"
    fontSize: 80
    width: campuslifew - 2 * campuslifeborder
    height: 100
    fontFamily: "OpenSans-bold"

dininglabels = new TextLayer
    parent: campuslife3
    x: diningname.x
    y: 0.03*campuslifeh + 150
    text: '''<On Campus Dining Options and Operating Hours!!>'''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: campuslifew - 2 * campuslifeborder
    height: (campuslife3.height - diningname.height)*0.15
    fontFamily: "OpenSans-bold"

### MAILBOX AND PACKAGES ###

campuslife4 = new Layer
	parent: campuslifepage.content
	x: 7*campuslifeborder + 3*campuslifew + campuslifeX0
	y: campuslifeY0
	width: campuslifew
	height: campuslifeh
	backgroundColor: "#FFF"
	borderRadius: campuslifeborder

mailboxname = new TextLayer
    parent: campuslife4
    x: 0.8*(campuslifeX0 + campuslifeborder)
    y: 0.03*campuslifeh
    text: "SMC Mailbox & Combination"
    color: "#000"
    textAlign: "left"
    fontSize: 80
    width: campuslifew - 2 * campuslifeborder
    height: 100
    fontFamily: "OpenSans-bold"

smclabels = new TextLayer
    parent: campuslife4
    x: mailboxname.x
    y: 0.03*campuslifeh + 150
    text: '''SMC Mailbox Number

    Combination

    Number of Packages


    Package Descriptions'''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: campuslifew - 2 * campuslifeborder
    height: 620
    fontFamily: "OpenSans-bold"

smctrue = new TextLayer
    parent: campuslife4
    x: campuslife4.width/2
    y: 0.03*campuslifeh + 150
    text: '''0000

    00-01-02

    0'''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: campuslifew - 2 * campuslifeborder
    fontFamily: "OpenSans"

packagedescriptions = new TextLayer
    parent: campuslife4
    x: smclabels.x
    y: smclabels.x + smclabels.height
    text: '''You have no packages.'''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: campuslifew - 2 * campuslifeborder
    fontFamily: "OpenSans"

### PRINTING AND PLAIDCASH ###

campuslife5 = new Layer
	parent: campuslifepage.content
	x: 9*campuslifeborder + 4*campuslifew + campuslifeX0
	y: campuslifeY0
	width: campuslifew
	height: campuslifeh
	backgroundColor: "#FFF"
	borderRadius: campuslifeborder

printingname = new TextLayer
    parent: campuslife5
    x: 0.8*(campuslifeX0 + campuslifeborder)
    y: 0.03*campuslifeh
    text: "Printing and Plaid Cash"
    color: "#000"
    textAlign: "left"
    fontSize: 80
    width: campuslifew - 2 * campuslifeborder
    height: 100
    fontFamily: "OpenSans-bold"

printquotalabels = new TextLayer
    parent: campuslife5
    x: printingname.x
    y: 0.03*campuslifeh + 150
    text: '''Print Quota
    (Current Semester)

    Plaid Cash'''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: campuslifew - 2 * campuslifeborder
    height: 620
    fontFamily: "OpenSans-bold"

printquotatrue = new TextLayer
    parent: campuslife5
    x: campuslife4.width/2
    y: 0.03*campuslifeh + 150
    text: '''$40.00


    $0.00'''
    color: "#000"
    textAlign: "left"
    fontSize: textsize
    width: campuslifew - 2 * campuslifeborder
    fontFamily: "OpenSans"

### TURN TARTAN OVERNIGHT ###

campuslife6 = new Layer
	parent: campuslifepage.content
	x: 11*campuslifeborder + 5*campuslifew + campuslifeX0
	y: campuslifeY0
	width: campuslifew
	height: campuslifeh
	backgroundColor: "#FFF"
	borderRadius: campuslifeborder

aoaname = new TextLayer
    parent: campuslife6
    x: 0.8*(campuslifeX0 + campuslifeborder)
    y: 0.03*campuslifeh
    text: "Admissions Overnight Ambassador"
    color: "#000"
    textAlign: "left"
    fontSize: 80
    width: campuslifew - 2 * campuslifeborder
    height: 100
    fontFamily: "OpenSans-bold"

ttolabel = new TextLayer
    parent: campuslife6
    x: housingname.x
    y: 0.03*campuslifeh + 250
    text: '''You are registered for:

    Turn Tartan Overnight'''
    color: "#000"
    textAlign: "left"
    fontSize: 45
    width: campuslifew - 2 * campuslifeborder
    height: textsize*1.5
    fontFamily: "OpenSans-bold"

ttotrue = new TextLayer
    parent: campuslife6
    x: housingname.x
    y: ttolabel.y + 195
    text: '''February 12 - February 13'''
    color: "#000"
    textAlign: "left"
    fontSize: 45
    width: campuslifew - 2 * campuslifeborder
    height: textsize*1.5
    fontFamily: "OpenSans"

codlabel = new TextLayer
    parent: campuslife6
    x: housingname.x
    y: ttotrue.y + 125
    text: '''Celebration of Diversity'''
    color: "#000"
    textAlign: "left"
    fontSize: 45
    width: campuslifew - 2 * campuslifeborder
    height: textsize*1.5
    fontFamily: "OpenSans-bold"

codtrue = new TextLayer
    parent: campuslife6
    x: housingname.x
    y: codlabel.y + 80
    text: '''You are not registered for any events.'''
    color: "#000"
    textAlign: "left"
    fontSize: 45
    width: campuslifew - 2 * campuslifeborder
    height: textsize*1.5
    fontFamily: "OpenSans"


### LISTING OF LAYERS - quicklinks
- mylinksPage
-- quicklinksscreen
--- linksname
--- police
--- policetext
--- housing
--- housingtext
--- health
--- healthtext
--- caps
--- capstext
--- oie
--- oietext
--- escort
--- escorttext
-- campusmapscreen
--- linksname
--- mapimage
--- printimage
###

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

### Function to Hide SIO Course:
	hideCourses()
	viewCourses()###
	
hideCourses = () =>
	flow.visible = false
	NavigationTab.visible = false
	planner.visible = false
	transcript.visible = false
	registration.visible = false
	
viewCourses = () =>
	flow.visible = true
	NavigationTab.visible = true
	planner.visible = false
	transcript.visible = false
	registration.visible = false


#Create Tabs for Navigation
NavigationTab = new Layer			
	backgroundColor: "white"
	color: "white"
	x: Align.left
	y: Align.bottom
	width: 1500
	backgroundColor: "#a91e31"

course_schedule = new Layer
	x: 100
	y: -10
	scale:0.9
	image: "images/courses_schedule.png"
	

NavigationTab.addChild(course_schedule)

course_planner = new Layer
	x:450
	y:-10
	scale:0.9
	image: "images/courses_plan.png"

NavigationTab.addChild(course_planner)

course_register = new Layer
	x:850
	y:-10
	scale:0.9
	image: "images/courses_register.png"

NavigationTab.addChild(course_register)
	
course_grades = new Layer
	x:1150
	y:-10
	scale:0.9
	image: "images/courses_grades.png"

NavigationTab.addChild(course_grades)

#Handle click on tab
course_planner.onClick ->
	planner.visible = true
	flow.visible = false
	transcript.visible = false
	registration.visible = false
	
course_schedule.onClick ->
	flow.visible = true
	transcript.visible = false
	planner.visible = false
	registration.visible = false
	
course_grades.onClick ->
	flow.visible = false
	transcript.visible = true
	planner.visible = false
	registration.visible = false
course_register.onClick ->
	flow.visible = false
	transcript.visible = false
	planner.visible = false
	registration.visible = true

#Create the content
schedule_Monday = new Layer
    x: Align.centerX
    y: Align.centerY
    width: 0.9*main_width
    height: 0.8*main_height
    opacity: 1
    backgroundColor: "white"
    color: "white"
    borderRadius: 30

monday = new TextLayer
    text: "MONDAY"
    fontSize: 70
    fontFamily: "Verdanaa"
    color: "black"
    x: Align.center(-150)    

schedule_Monday.addChild(monday)

schedule_Tuesday = new Layer
    x: Align.center
    y: Align.center
    width: 0.9*main_width
    height: 0.8*main_height
    opacity: 1
    backgroundColor: "white"
    color: "white"
    borderRadius: 30
	
tuesday = new TextLayer
    text: "TUESDAY"
    fontSize: 70
    color: "black"
    fontFamily: "Verdanaa"
    x: Align.center(-150)    

schedule_Tuesday.addChild(tuesday)

schedule_Wednesday = new Layer
    x: Align.center
    y: Align.center
    width: 0.9*main_width
    height: 0.8*main_height
    opacity: 1
    backgroundColor: "white"
    color: "white"
    borderRadius: 30
    
 wednesday = new TextLayer
    text: "WEDNESDAY"
    fontSize: 70
    color: "black"
    fontFamily: "Verdanaa"
    x: Align.center(-200)    

schedule_Wednesday.addChild(wednesday)
    
schedule_Thursday = new Layer
    x: Align.center
    y: Align.center
    width: 0.9*main_width
    height: 0.8*main_height
    opacity: 1
    backgroundColor: "white"
    color: "white"
    borderRadius: 30
    
 thursday = new TextLayer
    text: "THURSDAY"
    fontSize: 70
    color: "black"
    fontFamily: "Verdanaa"
    x: Align.center(-150)    

schedule_Thursday.addChild(thursday)
 
schedule_Friday = new Layer
    x: Align.center
    y: Align.center
    width: 0.9*main_width
    height: 0.8*main_height
    opacity: 1
    backgroundColor: "white"
    color: "white"
    borderRadius: 30

 friday = new TextLayer
    text: "FRIDAY"
    fontSize: 70
    color: "black"
    fontFamily: "Verdanaa"
    x: Align.center(-150)    

schedule_Friday.addChild(friday)

schedule_Saturday = new Layer
    x: Align.center
    y: Align.center
    width: 0.9*main_width
    height: 0.8*main_height
    opacity: 1
    backgroundColor: "white"
    color: "white"
    borderRadius: 30
    
saturday = new TextLayer
    text: "SATURDAY"
    fontSize: 70
    color: "black"
    fontFamily: "Verdanaa"
    x: Align.center(-150)    

schedule_Saturday.addChild(saturday)

schedule_Sunday = new Layer
    x: Align.center
    y: Align.center
    width: 0.9*main_width
    height: 0.8*main_height
    opacity: 1
    backgroundColor: "white"
    color: "white"
    borderRadius: 30
    
sunday = new TextLayer
    text: "SUNDAY"
    fontSize: 70
    color: "black"
    fontFamily: "Verdanaa"
    x: Align.center(-150)    

schedule_Sunday.addChild(sunday)
    
flow = new FlowComponent
	x: Align.center
	y: Align.center(-100)
	width: 0.9*main_width
	height: 0.8*main_height
		
#create flow
flow.showNext(schedule_Tuesday)
flow.showNext(schedule_Wednesday)
flow.showNext(schedule_Thursday)
flow.showNext(schedule_Friday)
flow.showNext(schedule_Saturday)
flow.showNext(schedule_Sunday)
flow.showNext(schedule_Monday)

#swipe left handling
schedule_Monday.onSwipeLeft -> 	flow.showNext(schedule_Tuesday)

schedule_Tuesday.onSwipeLeft -> 	flow.showNext(schedule_Wednesday)

schedule_Wednesday.onSwipeLeft -> 	flow.showNext(schedule_Thursday)

schedule_Thursday.onSwipeLeft -> 	flow.showNext(schedule_Friday)

schedule_Friday.onSwipeLeft -> 	flow.showNext(schedule_Saturday)

schedule_Saturday.onSwipeLeft -> 	flow.showNext(schedule_Sunday)

schedule_Sunday.onSwipeLeft -> 	flow.showNext(schedule_Monday)

#swipe right handling
schedule_Monday.onSwipeRight -> 
	flow.showPrevious(schedule_Sunday)

schedule_Tuesday.onSwipeRight ->
	flow.showPrevious()

schedule_Wednesday.onSwipeRight ->
	flow.showPrevious()

schedule_Thursday.onSwipeRight ->
	flow.showPrevious()

schedule_Friday.onSwipeRight ->
	flow.showPrevious()
	
schedule_Saturday.onSwipeRight ->
	flow.showPrevious()
	
schedule_Sunday.onSwipeRight ->
	flow.showPrevious()

#Monday Schedule
nineMon = new Layer
	backgroundColor: "gray"
	x: Align.center(-100)
	y: Align.top(100)
	width: 1000
	height: 300
	borderRadius: 20
	image: "images/schedule_a.png"

timeNineMon = new TextLayer
	x:Align.left(-80)
	y: Align.top(-20)
	text: "9"
	fontSize: 60
	color: "black"
	fontFamily: "Times New Roman"
		
schedule_Monday.addChild(nineMon)
nineMon.addChild(timeNineMon)

twelveMon = new Layer
	backgroundColor: "gray"
	x: Align.center(-100)
	y: Align.center(-300)
	width: 1000
	height: 300
	borderRadius: 20
	image: "images/schedule_b.png"

timeTwelveMon = new TextLayer
	x:Align.left(-80)
	y: Align.top(-20)
	text: "12"
	fontSize: 60
	color: "black"
	fontFamily: "Times New Roman"
		
schedule_Monday.addChild(twelveMon)
twelveMon.addChild(timeTwelveMon)

threeMon = new Layer
	backgroundColor: "gray"
	x: Align.center(-100)
	y: Align.bottom(-650)
	width: 1000
	height: 300
	curve: "ease"
	borderRadius: 20
	image: "images/schedule_d.png"

timeThreeMon = new TextLayer
	x:Align.left(-80)
	y: Align.top(-20)
	text: "3"
	fontSize: 60
	color: "black"
	fontFamily: "Times New Roman"
		
schedule_Monday.addChild(threeMon)
threeMon.addChild(timeThreeMon)

#Tuesday Schedule
tenTues = new Layer
	backgroundColor: "gray"
	x: Align.center(-100)
	y: Align.top(100)
	width: 1000
	height: 300
	curve: "ease"
	borderRadius: 20
	image: "images/schedule_d.png"

timeTenTues = new TextLayer
	x:Align.left(-80)
	y: Align.top(-20)
	text: "10"
	fontSize: 60
	color: "black"
	fontFamily: "Times New Roman"
	
		
schedule_Tuesday.addChild(tenTues)
tenTues.addChild(timeTenTues)

threeTues = new Layer
	backgroundColor: "gray"
	x: Align.center(-100)
	y: Align.bottom(-1000)
	width: 1000
	height: 300
	curve: "ease"
	borderRadius: 20
	image: "images/schedule_c.png"

timeThreeTues = new TextLayer
	x:Align.left(-80)
	y: Align.top(-20)
	text: "3"
	fontSize: 60
	color: "black"
	fontFamily: "Times New Roman"
		
schedule_Tuesday.addChild(threeTues)
threeTues.addChild(timeThreeTues)

#Wednesday Schedule
nineWed = new Layer
	backgroundColor: "gray"
	x: Align.center(-100)
	y: Align.top(100)
	width: 1000
	height: 300
	borderRadius: 20
	image: "images/schedule_a.png"

timeNineWed = new TextLayer
	x:Align.left(-80)
	y: Align.top(-20)
	text: "9"
	fontSize: 60
	color: "black"
	fontFamily: "Times New Roman"
		
schedule_Wednesday.addChild(nineWed)
nineWed.addChild(timeNineWed)

twelveWed = new Layer
	backgroundColor: "gray"
	x: Align.center(-100)
	y: Align.center(-300)
	width: 1000
	height: 300
	borderRadius: 20
	image: "images/schedule_b.png"

timeTwelveWed = new TextLayer
	x:Align.left(-80)
	y: Align.top(-20)
	text: "12"
	fontSize: 60
	color: "black"
	fontFamily: "Times New Roman"
		
schedule_Wednesday.addChild(twelveWed)
twelveWed.addChild(timeTwelveWed)

threeWed = new Layer
	backgroundColor: "gray"
	x: Align.center(-100)
	y: Align.bottom(-650)
	width: 1000
	height: 300
	curve: "ease"
	borderRadius: 20
	image: "images/schedule_d.png"

timeThreeWed = new TextLayer
	x:Align.left(-80)
	y: Align.top(-20)
	text: "3"
	fontSize: 60
	color: "black"
	fontFamily: "Times New Roman"
		
schedule_Wednesday.addChild(threeWed)
threeWed.addChild(timeThreeWed)

#Thursday Schedule
tenThurs = new Layer
	backgroundColor: "gray"
	x: Align.center(-100)
	y: Align.top(100)
	width: 1000
	height: 300
	curve: "ease"
	borderRadius: 20
	image: "images/schedule_c.png"

timeTenThurs = new TextLayer
	x:Align.left(-80)
	y: Align.top(-20)
	text: "10"
	fontSize: 60
	color: "black"
	fontFamily: "Times New Roman"
		
schedule_Thursday.addChild(tenThurs)
tenThurs.addChild(timeTenThurs)

#Friday Schedule
nineFri = new Layer
	backgroundColor: "gray"
	x: Align.center(-100)
	y: Align.top(100)
	width: 1000
	height: 300
	borderRadius: 20
	image: "images/schedule_a.png"

timeNineFri = new TextLayer
	x:Align.left(-80)
	y: Align.top(-20)
	text: "9"
	fontSize: 60
	color: "black"
	fontFamily: "Times New Roman"
		
schedule_Friday.addChild(nineFri)
nineFri.addChild(timeNineFri)

twelveFri = new Layer
	backgroundColor: "gray"
	x: Align.center(-100)
	y: Align.center(-300)
	width: 1000
	height: 300
	borderRadius: 20
	image: "images/schedule_b.png"

timeTwelveFri = new TextLayer
	x:Align.left(-80)
	y: Align.top(-20)
	text: "12"
	fontSize: 60
	color: "black"
	fontFamily: "Times New Roman"
		
schedule_Friday.addChild(twelveFri)
twelveFri.addChild(timeTwelveFri)

threeFri = new Layer
	backgroundColor: "gray"
	x: Align.center(-100)
	y: Align.bottom(-650)
	width: 1000
	height: 300
	image: "images/schedule_d.png"

timeThreeFri = new TextLayer
	x:Align.left(-80)
	y: Align.top(-20)
	text: "3"
	fontSize: 60
	color: "black"
	fontFamily: "Times New Roman"
		
schedule_Friday.addChild(threeFri)
threeFri.addChild(timeThreeFri)

#Handle Touch on Schedule Box

#Monday Handling
nineMonDet = new Layer
	x: Align.right(-100)
	y: 500
	width: 600
	height: 300
	image: "images/schedule_a2.png"
	opacity: 0

nineMonDet.states.popUp = 
	opacity: 1
nineMonDet.states.fade = 
	opacity: 0
nineMon.onTouchStart ->
	nineMonDet.animate "popUp"
nineMon.onTouchEnd ->
	nineMonDet.animate "fade"

twelveMonDet = new Layer
	x: Align.right(-100)
	y: 1200
	width: 600
	height: 300
	image: "images/schedule_b2.png"
	opacity: 0

twelveMonDet.states.popUp = 
	opacity: 1
twelveMonDet.states.fade = 
	opacity: 0
twelveMon.onTouchStart ->
	twelveMonDet.animate "popUp"
twelveMon.onTouchEnd ->
	twelveMonDet.animate "fade"

threeMonDet = new Layer
	x: Align.right(-100)
	y: 2000
	width: 600
	height: 300
	image: "images/schedule_d2.png"
	opacity: 0

threeMonDet.states.popUp = 
	opacity: 1
threeMonDet.states.fade = 
	opacity: 0
threeMon.onTouchStart ->
	threeMonDet.animate "popUp"
threeMon.onTouchEnd ->
	threeMonDet.animate "fade"
	
#Tuesday
tenTueDet = new Layer
	x: Align.right(-100)
	y: 500
	width: 600
	height: 300
	image: "images/schedule_d2.png"
	opacity: 0

tenTueDet.states.popUp = 
	opacity: 1
tenTueDet.states.fade = 
	opacity: 0
tenTues.onTouchStart ->
	tenTueDet.animate "popUp"
tenTues.onTouchEnd ->
	tenTueDet.animate "fade"

threeTueDet = new Layer
	x: Align.right(-100)
	y: 1600
	width: 600
	height: 300
	image: "images/schedule_c2.png"
	opacity: 0

threeTueDet.states.popUp = 
	opacity: 1
threeTueDet.states.fade = 
	opacity: 0
threeTues.onTouchStart ->
	threeTueDet.animate "popUp"
threeTues.onTouchEnd ->
	threeTueDet.animate "fade"

#Wednesday
nineWedDet = new Layer
	x: Align.right(-100)
	y: 400
	width: 600
	height: 300
	image: "images/schedule_a2.png"
	opacity: 0

nineWedDet.states.popUp = 
	opacity: 1
nineWedDet.states.fade = 
	opacity: 0
nineWed.onTouchStart ->
	nineWedDet.animate "popUp"
nineWed.onTouchEnd ->
	nineWedDet.animate "fade"

twelveWedDet = new Layer
	x: Align.right(-100)
	y: 1200
	width: 600
	height: 300
	image: "images/schedule_c2.png"
	opacity: 0

twelveWedDet.states.popUp = 
	opacity: 1
twelveWedDet.states.fade = 
	opacity: 0
twelveWed.onTouchStart ->
	twelveWedDet.animate "popUp"
twelveWed.onTouchEnd ->
	twelveWedDet.animate "fade"
	
threeWedDet = new Layer
	x: Align.right(-100)
	y: 2000
	width: 600
	height: 300
	image: "images/schedule_d2.png"
	opacity: 0

threeWedDet.states.popUp = 
	opacity: 1
threeWedDet.states.fade = 
	opacity: 0
threeWed.onTouchStart ->
	threeWedDet.animate "popUp"
threeWed.onTouchEnd ->
	threeWedDet.animate "fade"

#Thursday
tenThursDet = new Layer
	x: Align.right(-100)
	y: 400
	width: 600
	height: 300
	image: "images/schedule_c2.png"
	opacity: 0

tenThursDet.states.popUp = 
	opacity: 1
tenThursDet.states.fade = 
	opacity: 0
tenThurs.onTouchStart ->
	tenThursDet.animate "popUp"
tenThurs.onTouchEnd ->
	tenThursDet.animate "fade"

#Friday
nineFriDet = new Layer
	x: Align.right(-100)
	y: 400
	width: 600
	height: 300
	image: "images/schedule_a2.png"
	opacity: 0

nineFriDet.states.popUp = 
	opacity: 1
nineFriDet.states.fade = 
	opacity: 0
nineFri.onTouchStart ->
	nineFriDet.animate "popUp"
nineFri.onTouchEnd ->
	nineFriDet.animate "fade"

twelveFriDet = new Layer
	x: Align.right(-100)
	y: 1200
	width: 600
	height: 300
	image: "images/schedule_b2.png"
	opacity: 0

twelveFriDet.states.popUp = 
	opacity: 1
twelveFriDet.states.fade = 
	opacity: 0
twelveFri.onTouchStart ->
	twelveFriDet.animate "popUp"
twelveFri.onTouchEnd ->
	twelveFriDet.animate "fade"
	
threeFriDet = new Layer
	x: Align.right(-100)
	y: 2000
	width: 600
	height: 300
	image: "images/schedule_d2.png"
	opacity: 0

threeFriDet.states.popUp = 
	opacity: 1
threeFriDet.states.fade = 
	opacity: 0
threeFri.onTouchStart ->
	threeFriDet.animate "popUp"
threeFri.onTouchEnd ->
	threeFriDet.animate "fade"

#Create Grades View
transcript = new Layer 
	x: Align.center
	y: Align.center(-100)
	width: 0.9*main_width
	height: 0.8*main_height
	backgroundColor: "white"
	
QPAgraph = new Layer
	x: Align.center(-150)
	y: 60
	width: 1000	
	height: 800
	image: "images/grades_graph.png"

currDetails = new Layer
	x: Align.center(-70)
	y: Align.center(-120)
	width: 1200	
	height: 500
	backgroundColor: "white"
	borderWidth: 2
	borderRadius: 20
	
currDetails_text = new TextLayer
	text: "CURRENT GRADES \n \n OS  A \n COMPILER A \n PAR COMP ARCH A \n ALG. DES AND ANAL. A"
	width: 650
	fontSize: 60
	fontFamily: "Open Sans"
	color: "black"
	x:20
	y: 20
	


currDetails.addChild(currDetails_text)

gradeHistory = new Layer
	x: Align.center(-70)
	y: Align.bottom(-600)
	width: 1200	
	height: 500
	borderRadius: 20
	backgroundColor: "white"
	borderWidth: 2

gradeHist_text = new TextLayer
	text: "HISTORY \n \n PRINC IMPRTV PROG  A \n PRINC FUNCT PROG A \n GREAT THEO COMP SCI A \n INTRO TO SYS B"
	width: 1000
	fontSize: 60
	fontFamily: "Open Sans"
	color: "black"
	x:20
	y: 20
	
gradeHistory.addChild(gradeHist_text)

transcript.addChild(QPAgraph)
transcript.addChild(currDetails)
transcript.addChild(gradeHistory)

transcript.visible = false

#Code for planner
#Import necessary module
{TextLayer} = require 'TextLayer'


# Set background color
Screen.backgroundColor = "#AAEEFF"

main_width = Screen.width
main_height = Screen.height

planner = new Layer
	width: main_width
	height: main_height
	opacity: 1
	backgroundColor: "transparent"
	
calendar = new Layer
	x: Align.center
	y: Align.center(40)
	width: main_width*0.9
	height: main_height*0.8
	image: "images/schedule_empty.png"

calendar.states.added = 
	image: "images/schedule_filled.png"

search_bar = new Layer
	x:Align.center
	y:Align.top(50)
	width: main_width*0.9
	backgroundColor: "#d3d3d3"
	borderRadius: 20

search_text = new TextLayer
	text: "Enter Keyword"
	fontSize: 80
	color: "gray"
	width: 1000
	x:100
	y: 50

search_bar.addChild(search_text)

	
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
	search_text.visible = false

calendar.onClick ->
	choices_plan.visible = false
	keyboard.visible = false
	search_text.visible = true

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
	calendar.animate "added"
	choices_plan.visible = false
	keyboard.visible = false
	
	
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

planner.addChild(search_bar)
planner.addChild(calendar)

planner.visible = false

#Registration
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
	backgroundColor: "gray"
	image: "images/registered.png"

Waitlist = new Layer
	x: Align.center
	y: Align.bottom(-250)
	width: main_width*0.9
	backgroundColor: "white"
	height: main_height*0.25
	borderRadius: 20
	
Waitlist_text = new TextLayer
	text: "WAITLIST"
	fontFamily: "Open Sans"
	fontSize: "60"
	y: 40
	x: 50
	color: "black"

Waitlist_text2 = new TextLayer
	text: "THERE IS NO COURSE ON WAITLIST RIGHT NOW"
	fontFamily: "Open Sans"
	fontSize: "60"
	width: 1000
	y: 130
	x: 50
	color: "black"

Waitlist.addChild(Waitlist_text)
Waitlist.addChild(Waitlist_text2)	

registration.addChild(Registered)
registration.addChild(Waitlist)

registration.visible = false


### LISTING OF LAYERS - MENUBAR
- NavBar
-- menu-bar; bar1; bar2; bar3
-- menu_my_info
--- myInfo_text
-- menu_courses
--- courses_text
-- menu_campuslife
--- campuslife_text
-- menu_quicklinks
--- quicklinks_text
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

menu_my_info = new Layer
	x: 0
	y: 240 + 0 * bar_height
	width: main_width
	height: bar_height
	backgroundColor: "#A91E31"

myInfo_text = new TextLayer
	parent: menu_my_info
	color: "white"
	midX: bar_width/2
	midY: bar_height/2
	text: "MY INFO"
	textAlign: "center"
	width: bar_width
	height: 150
	fontSize: 100
	fontFamily: "OpenSans"
	
NavBar.addChild(menu_my_info)
menu_my_info.addChild(myInfo_text)

### 2 Courses button ###

menu_courses = new Layer
	x: 0
	y: 240 + 1 * bar_height
	width: main_width
	height: bar_height
	backgroundColor: "#DB264D"

courses_text = new TextLayer
	parent: menu_courses
	color: "black"
	midX: bar_width/2
	midY: bar_height/2
	text: "COURSES"
	textAlign: "center"
	width: bar_width
	height: 150
	fontSize: 100
	fontFamily: "OpenSans"

NavBar.addChild(menu_courses)
menu_courses.addChild(courses_text)

### 3 Campus life button ###

menu_campuslife = new Layer
	x: 0
	y: 240 + 2 * bar_height
	width: main_width
	height: bar_height
	backgroundColor: "#A91E31"

campuslife_text = new TextLayer
	parent: menu_campuslife
	color: "white"
	midX: bar_width/2
	midY: bar_height/2
	text: "CAMPUS LIFE"
	textAlign: "center"
	width: bar_width
	height: 150
	fontSize: 100
	fontFamily: "OpenSans"
	
NavBar.addChild(menu_campuslife)
menu_campuslife.addChild(campuslife_text)

### 4 Quicklinks button ###

menu_quicklinks= new Layer
	x: 0
	y: 240 + 3 * bar_height
	width: main_width
	height: bar_height
	backgroundColor: "#DB264D"

quicklinks_text = new TextLayer
	parent: menu_quicklinks
	color: "black"
	midX: bar_width/2
	midY: bar_height/2
	text: "QUICK LINKS"
	textAlign: "center"
	width: bar_width
	height: 150
	fontSize: 100
	fontFamily: "OpenSans"

NavBar.addChild(menu_quicklinks)
menu_quicklinks.addChild(quicklinks_text)

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

campuslifepage.visible = false
myInfoPage.visible = false
mylinksPage.visible = false
hideCourses()

menu_my_info.onClick ->
	sioBIG.visible= false
	campuslifepage.visible = false
	myInfoPage.visible = true
	mylinksPage.visible = false
	hideCourses()
	menu_bar.bringToFront()
	bar1.bringToFront()
	bar2.bringToFront()
	bar3.bringToFront()
	NavBar.animate "hide"
	navBarView = false

menu_courses.onClick ->
	sioBIG.visible= false
	campuslifepage.visible = false
	myInfoPage.visible = false
	mylinksPage.visible = false
	viewCourses()
	menu_bar.bringToFront()
	bar1.bringToFront()
	bar2.bringToFront()
	bar3.bringToFront()
	NavBar.animate "hide"
	navBarView = false

menu_campuslife.onClick ->
	sioBIG.visible= false
	campuslifepage.visible = true
	myInfoPage.visible = false
	mylinksPage.visible = false
	hideCourses()
	menu_bar.bringToFront()
	bar1.bringToFront()
	bar2.bringToFront()
	bar3.bringToFront()
	NavBar.animate "hide"
	navBarView = false
	
menu_quicklinks.onClick ->
	sioBIG.visible= false
	campuslifepage.visible = false
	myInfoPage.visible = false
	mylinksPage.visible = true
	hideCourses()
	menu_bar.bringToFront()
	bar1.bringToFront()
	bar2.bringToFront()
	bar3.bringToFront()
	NavBar.animate "hide"
	navBarView = false

menu_bar.onClick ->
	menu_bar.bringToFront()
	bar1.bringToFront()
	bar2.bringToFront()
	bar3.bringToFront()
	NavBar.bringToFront()		
	if not navBarView
		NavBar.animate "inView"
		navBarView = true
	if navBarView
		NavBar.animate "hide"
		navBarView = false

