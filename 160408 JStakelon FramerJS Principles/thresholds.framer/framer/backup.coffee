###
	SETUP
###

Framer.Defaults.Animation = 
	curve: "spring(200, 20, 20)"
	
Framer.Defaults.Layer = 
	width: 400
	height: 300
	backgroundColor: null
	
viewport = new Layer
viewport.style.border = "3px solid black"
viewport.center()
	
container = new Layer
	width: 800
	superLayer: viewport

cardA = new Layer
	backgroundColor: "#FFC107"
	superLayer: container
	
cardB = new Layer
	x: 400
	backgroundColor: "#E91E63"
	superLayer: container
	
Utils.labelLayer cardA, "Slide me left"
Utils.labelLayer cardB, "Slide me right"

###
	EXAMPLE CODE
###

container.draggable.enabled = true
container.draggable.speedY = 0

container.on Events.DragEnd, ->
	targetX = if @x < -200 then -400 else 0
	@.animate
		properties:
			x: targetX
		