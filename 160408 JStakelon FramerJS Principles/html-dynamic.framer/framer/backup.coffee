###
	SETUP
###	

# Random API responses from http://uifaces.com
dataStub = [{
username: "flobota",
image: "https://s3.amazonaws.com/uifaces/faces/twitter/flobota/128.jpg"
}, {
username: "theonlymichaelt",
image: "https://s3.amazonaws.com/uifaces/faces/twitter/theonlymichaelt/128.jpg"
}, {
username: "ionutbondoc",
image: "https://s3.amazonaws.com/uifaces/faces/twitter/ionutbondoc/128.jpg"
}]

Framer.Defaults.Layer.backgroundColor = null

container = new Layer
	width: 640
	height: 200
	x: 20
	y: 20
	
###
	EXAMPLE CODE
###	

Utils.insertCSS("@import url(http://fonts.googleapis.com/css?family=Karla);")

_.each dataStub, (item, index)->
	
	layer = new Layer
		width: 200
		height: 200
		x: 220*index
		image: item.image
		superLayer: container
	layer.style =
		border: "2px solid rgba(0, 0, 0, .5)"
		
	layerLabel = new Layer
		width: 180
		height: 28
		x: 10
		y: 160
		superLayer: layer
	layerLabel.html = item.username
	layerLabel.style = 
		fontFamily: "Karla"
		fontSize: "18px"
		fontWeight: "bold"
		textShadow: "0 0 3px #000"
		
	
	