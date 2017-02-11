#Import necessary module
{TextLayer} = require 'TextLayer'

# Set background color
Screen.backgroundColor = "#AAEEFF"

main_width = Screen.width
main_height = Screen.height
	
#Create the background	
schedule_background = new BackgroundLayer 
	x:Align.centerX
	y: Align.centerY
	image: "images/CMU-Tartan-Digital.png"
	
#Create Tabs for Navigatino
NavigationTab = new Layer			
	backgroundColor: "white"
	color: "white"
	x: Align.center
	y: Align.bottom
	width: 1500
	backgroundColor: "#a91e31"
	

#Create the content
schedule_Monday = new Layer
    x: Align.centerX
    y: Align.centerY
    width: 0.9*main_width
    height: 0.8*main_height
    opacity: 1
    backgroundColor: "white"
    color: "white"

monday = new TextLayer
    text: "Monday"
    fontSize: 80
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

tuesday = new TextLayer
    text: "Tuesday"
    fontSize: 80
    color: "black"
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
    
 wednesday = new TextLayer
    text: "Wednesday"
    fontSize: 80
    color: "black"
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
    
 thursday = new TextLayer
    text: "Thursday"
    fontSize: 80
    color: "black"
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

 friday = new TextLayer
    text: "Friday"
    fontSize: 80
    color: "black"
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
    
saturday = new TextLayer
    text: "Saturday"
    fontSize: 80
    color: "black"
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

sunday = new TextLayer
    text: "Sunday"
    fontSize: 80
    color: "black"
    x: Align.center(-150)    

schedule_Sunday.addChild(sunday)
    
flow = new FlowComponent
	x: Align.center
	y: Align.center
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

timeNineFri = new TextLayer
	x:Align.left(-80)
	y: Align.top(-20)
	text: "9"
	fontSize: 60
	color: "black"
	fontFamily: "Times New Roman"
		
schedule_Friday.addChild(nineFri)
nineWed.addChild(timeNineFri)

twelveFri = new Layer
	backgroundColor: "gray"
	x: Align.center(-100)
	y: Align.center(-300)
	width: 1000
	height: 300
	borderRadius: 20

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
	curve: "ease"
	borderRadius: 20

timeThreeFri = new TextLayer
	x:Align.left(-80)
	y: Align.top(-20)
	text: "3"
	fontSize: 60
	color: "black"
	fontFamily: "Times New Roman"
		
schedule_Friday.addChild(threeFri)
threeWed.addChild(timeThreeFri)

#Handle Touch on Schedule Box

#Monday Handling
nineMonDet = new Layer
	x: Align.right(-100)
	y: 500
	width: 600
	height: 300
	backgroundColor: "red"
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
	backgroundColor: "red"
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
	backgroundColor: "red"
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
	backgroundColor: "red"
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
	backgroundColor: "red"
	opacity: 0

threeTueDet.states.popUp = 
	opacity: 1
threeTueDet.states.fade = 
	opacity: 0
threeTues.onTouchStart ->
	threeTueDet.animate "popUp"
threeTues.onTouchEnd ->
	threeTueDet.animate "fade"

	
	


	



	
	

