#Create Grades View
transcript = new Layer 
	x: Align.center
	y: Align.center
	width: 1000
	height: 2000
	backgroundColor: "white"
	
QPAgraph = new Layer
	x: Align.center(-225)
	y: 60
	width: 900	
	height: 800

currDetails = new Layer
	x: Align.center(-225)
	y: Align.center(-120)
	width: 900	
	height: 500

gradeHistory = new Layer
	x: Align.center(-225)
	y: Align.bottom(-600)
	width: 900	
	height: 500
		
transcript.addChild(QPAgraph)
transcript.addChild(currDetails)
transcript.addChild(gradeHistory)

