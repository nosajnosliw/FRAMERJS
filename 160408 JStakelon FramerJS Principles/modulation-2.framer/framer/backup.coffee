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
	shadowDist = Utils.modulate xdist, [0, 300], [0, 10]
	@shadowX = - shadowDist
	
	# and blur the shadow
	shadowBlur = Utils.modulate Math.abs(xdist), [0, 300], [0, 20]
	@shadowBlur = shadowBlur
	
	# and let's lift it higher the further it moves
	layerScale = Utils.modulate Math.abs(xdist), [0, 300], [1, 1.5], true
	@scale = layerScale

layer.on Events.DragEnd, ->
	@animate
		properties:
			x: @originalFrame.x
			y: @originalFrame.y
			shadowX: 0
			shadowBlur: 0
			scale: 1
		curve: "spring(200, 20, 20)"