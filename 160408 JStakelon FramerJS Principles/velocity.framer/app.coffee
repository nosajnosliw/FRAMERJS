###
	SETUP
###

Framer.Defaults.Animation = 
	curve: "spring(200, 20, 20)"

box = new Layer
	height: 200
	width: 200
	borderRadius: 10
	backgroundColor: "#00BCD4"
	
box.center()
box.originalFrame = box.frame
	
###
	EXAMPLE CODE
###

box.draggable.enabled = true

box.on Events.DragMove, ->
	velocity = @.draggable.calculateVelocity()
	print velocity.x, velocity.y
	
	xRotationVal = Utils.modulate velocity.y, [-5, 5], [-100, 100], true
	yRotationVal = Utils.modulate velocity.x, [-5, 5], [-100, 100], true
	
	@animate
		properties:
			rotationX: xRotationVal
			rotationY: -yRotationVal
		curve: "spring(1000, 20, 20)"

box.on Events.DragEnd, ->
	@animateStop()
	@animate
		properties:
			x: @originalFrame.x
			y: @originalFrame.y
			rotationX: 0
			rotationY: 0
		curve: "spring(200, 20, 20)"
	
	