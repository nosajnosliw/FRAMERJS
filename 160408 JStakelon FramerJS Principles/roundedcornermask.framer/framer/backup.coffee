Framer.DeviceView.Devices["custom"] =
	"deviceType":"phone" # phone or desktop
	"screenWidth": 500
	"screenHeight": 500
	"deviceImage": ""
	"deviceImageWidth": 500
	"deviceImageHeight": 500
	
Framer.Device.deviceType = "custom"

backgroundLayer = new BackgroundLayer backgroundColor:"black"

layerA = new Layer({width:400, height:400, 
backgroundColor:"red"})

layerB = new Layer({width:300, height:300, 
backgroundColor:"blue"})

layerB.borderRadius = 10

layerA.force2d = true
layerA.superLayer = layerB

container = new Layer
	width: 128
	height: 48
	x: 100
	y: 100
	borderRadius: 10
	
solid = new Layer
	width: 200
	height: 200
	backgroundColor: Utils.randomColor()
	superLayer: container

solid.force2d = true




# imageLayer = new Layer 
# 	x:0, y:0, width:514, height:386, image:"images/Photo-5C42D4F9-4A4F-4429-83D3-3359BB34EC99.png"
# 	
# imageLayer.superLayer = container
