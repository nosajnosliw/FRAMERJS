###
	SETUP
###

Framer.Defaults.Layer.backgroundColor = null

visibleWidth = 320
visibleHeight = 520

container = new Layer
	x: 20
	y: 20
	width: visibleWidth
	height: visibleHeight
container.style =
	border: "2px solid #000"
	
	
	
###
	EXAMPLE CODE
###

# this will be deprecated on 4/8/15
# but, yknow, we live for the moment
apiEndpoint = "http://api.dribbble.com/shots/popular"

# use jsonp proxy to enable cross-domain request
jsonpEndpoint = "http://jsonp.jit.su/?url=" + apiEndpoint

data = Utils.domLoadJSONSync jsonpEndpoint

scrollContainer = new Layer
	width: visibleWidth
	height: 0
	superLayer: container
container.scrollVertical = true

_.each data.shots, (shot, index)->
	
	layerHeight = visibleWidth * .75
	
	shotLayer = new Layer
		width: visibleWidth
		height: layerHeight
		y: layerHeight * index
		image: shot.image_url
		superLayer: scrollContainer
	
	scrollContainer.height += layerHeight