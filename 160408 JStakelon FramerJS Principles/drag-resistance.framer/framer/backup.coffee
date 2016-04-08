layer = new Layer
	borderRadius: "50%"
	backgroundColor: Utils.randomColor()
layer.center()
layer.originalFrame = layer.frame

layer.draggable.enabled = true

layer.on Events.DragMove, ->
	xdist = Math.abs @x - @originalFrame.x
	ydist = Math.abs @y - @originalFrame.y
	dist = Math.max xdist, ydist
	speed = Utils.modulate dist, [0, 500], [1, 0], true
	@draggable.speedX = @draggable.speedY = speed

layer.on Events.DragEnd, ->
	@animate
		properties:
			x: @originalFrame.x
			y: @originalFrame.y
		curve: "spring(200, 20, 20)"