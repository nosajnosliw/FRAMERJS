###
	If you're using Framer Studio (you should be!) you'll want to include the Firebase library in the index.html file with `<script src="https://cdn.firebase.com/js/client/2.1.1/firebase.js"></script>`
###

###
	SETUP
###

countLabel = new Layer
	x: 300
	y: 20
	width: 500
	height: 140
	backgroundColor: null
countLabel.html = count
countLabel.style = 
	fontSize: "100px"
	lineHeight: "100px"
	color: "#000000"

button = new Layer
	width: 240
	x: 20
	y: 20
	backgroundColor: "#E91E63"
	borderRadius: 10
Utils.labelLayer button, "Tap to increment"



###
	EXAMPLE CODE
###

firebase = new Firebase "https://simpleframerdemo.firebaseio.com/"

count = null

firebase.on "value", (dataSnapshot)->
	count = dataSnapshot.val().count
	countLabel.html = count

button.on Events.Click, ->
	firebase.set 
		count: count+1
		
