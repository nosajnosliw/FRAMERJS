###
	SETUP
###

Framer.Defaults.Layer.backgroundColor = null

superContainer = new Layer
	width: 600
	height: 600
	x: 20
	y: 20
	backgroundColor: null

container = new Layer
	width: 400
	superLayer: superContainer
	
ball = new Layer
	width: 50
	height: 50
	borderRadius: "50%"
	backgroundColor: "#E91E63"

ball.superLayer = container
ballA = ball.copy()
ballA.superLayer = superContainer
ballA.y = 120
ballB = ball.copy()
ballB.superLayer = superContainer
ballB.y = 180
ballC = ball.copy()
ballC.superLayer = superContainer
ballC.y = 240

###
	EXAMPLE CODE
###

ball.draggable.enabled = true
ball.draggable.speedY = 0
ball.draggable.maxDragFrame = container.frame

ball.on "change:x", ->
	ballA.x = Utils.modulate @x, [0, 400], [0, 200]
	ballB.x = @x
	ballC.x = Utils.modulate @x, [0, 400], [0, 600]
	
	
	