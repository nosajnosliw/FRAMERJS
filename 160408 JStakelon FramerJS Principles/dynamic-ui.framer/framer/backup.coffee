###
	SETUP
###

layer = new Layer
	borderRadius: 10
	backgroundColor: "#8BC34A"
	shadowColor: "rgba(0, 0, 0, .5)"
	shadowX: 0
	shadowBlur: 0
layer.center()
layer.originalFrame = layer.frame


###
	EXAMPLE CODE
###

layer.draggable.enabled = true
layer.draggable.speedY = 0

layer.on Events.DragMove, ->
	# measure the distance from the original X position
	xdist = @x - @originalFrame.x
	# adjust the shadow's X position
	@shadowX = - xdist / 20
	# and blur the shadow
	@shadowBlur = Math.abs xdist / 20

layer.on Events.DragEnd, ->
	@animate
		properties:
			x: @originalFrame.x
			y: @originalFrame.y
			shadowX: 0
			shadowBlur: 0
		curve: "spring(200, 20, 20)"