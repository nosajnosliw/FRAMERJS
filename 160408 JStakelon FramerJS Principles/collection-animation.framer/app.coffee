Framer.Defaults.Layer.backgroundColor = "#00BCD4"
Framer.Defaults.Layer.borderRadius = 10
Framer.Defaults.Animation = 
	curve: "spring(200, 50, 50)"

rows = 3
cols = 3

gutter = 16
width  = 96
height = 96

container = new Layer
	width: 500
	height: 500
	backgroundColor: null

for rowIndex in [0..rows-1]
	for colIndex in [0..cols-1]
		cellLayer = new Layer
			width:  width
			height: height
			x: colIndex * (width + gutter) + 25
			y: rowIndex * (height + gutter) + 25
			scale: 0
			superLayer: container
		cellLayer.originalFrame = cellLayer.frame

_.each container.subLayers, (layer, index)->
	layer.animate
		properties:
			scale: 1
		delay: index/20