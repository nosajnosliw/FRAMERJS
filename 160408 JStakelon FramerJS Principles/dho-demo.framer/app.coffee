
offset = 40
rows = 4
cols = 5

horizSpacing = 40
vertSpacing = 90
width  = 120
height = 90

options = ["Stiffness", "Damping", "Mass", "Tolerance"]
groups = []
valueGroups = [
	["50, 10, 1, 0", "100, 10, 1, 0", "200, 10, 1, 0", "500, 10, 1, 0", "1000, 10, 1, 0"]
	["100, 0, 1, 0", "100, 1, 1, 0", "100, 10, 1, 0", "100, 20, 1, 0", "100, 50, 1, 0"]
	["100, 10, 0, 0", "100, 10, 1, 0", "100, 10, 2, 0", "100, 10, 5, 0", "100, 10, 10, 0"]
	["20, 10, 1, 0", "20, 10, 1, .1", "20, 10, 1, .2", "20, 10, 1, .3", "20, 10, 1, .5"]
]

for rowIndex in [0..rows-1]

	bgColor = Utils.randomColor()
	labelLayer = new Layer
		width: 200
		x: offset
		y: rowIndex * (height + vertSpacing) + 6
		backgroundColor: null
	labelLayer.html = "<h6>"+options[rowIndex]+"</h6>"
	labelLayer.style.color = "#000000"
	labelLayer.style.fontSize = "20px"
	labelLayer.style.fontFamily = "sans-serif"
	groups[rowIndex] = []
	
	for colIndex in [0..cols-1]
		cellLayer = new Layer
			width:  width
			height: height
			x: offset + colIndex * (width + horizSpacing)
			y: offset + rowIndex * (height + vertSpacing)
			borderRadius: 5
			backgroundColor: bgColor
		cellLayer.opacity = .75+(colIndex/20)
		cellLayer.originalFrame = cellLayer.frame
		cellLayer.rowIndex = rowIndex
		cellLayer.animOptions = valueGroups[rowIndex][colIndex]
		groups[rowIndex].push cellLayer
		
		Utils.labelLayer cellLayer, valueGroups[rowIndex][colIndex]
		
		cellLayer.on Events.Click, ->
			for cell in groups[@rowIndex]
				curve = "spring-dho("+cell.animOptions+")"
				anim = new Animation
					layer: cell
					properties:
						y: cell.originalFrame.y + 50
					curve: curve
				anim.on Events.AnimationEnd, ->
					@.options.layer.animate
						properties:
							y: cell.originalFrame.y
						time: .2
						curve: "ease"
				anim.start()

					
			