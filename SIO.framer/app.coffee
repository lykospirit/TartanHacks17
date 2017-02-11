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
	flow.visible = false
	transcript.visible = false
	
course_schedule.onClick ->
	flow.visible = true
	transcript.visible = false

course_grades.onClick ->
	flow.visible = false
	transcript.visible = true

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
	x: Align.center(-70)
	y: 60
	width: 1200	
	height: 800

currDetails = new Layer
	x: Align.center(-70)
	y: Align.center(-120)
	width: 1200	
	height: 500

gradeHistory = new Layer
	x: Align.center(-70)
	y: Align.bottom(-600)
	width: 1200	
	height: 500
		
transcript.addChild(QPAgraph)
transcript.addChild(currDetails)
transcript.addChild(gradeHistory)

transcript.visible = false



	
	

