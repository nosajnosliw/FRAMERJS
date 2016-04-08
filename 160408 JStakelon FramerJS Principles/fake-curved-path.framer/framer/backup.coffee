container = new Layer
	width: 400
	height: 100
	originX: 1
	y: 500
	backgroundColor: null
	
circle = new Layer
	borderRadius: "50%"
	superLayer: container
	backgroundColor: "#E91E63"
	
container.animate
	properties:
		rotation: 180
		y: 250
	curve: "spring(100, 50, 0)"
