
containerLayer = new Layer
	x: 0, y:0, width: 400, height: 400

containerLayer.style["-webkit-mask"] = "url(images/Circle-B2B709F4-85FC-45A7-A21F-778CAC72D66D.png)"


containerLayer.animate
	properties:
		scale: 2
imageLayer = new Layer 
	x:0, y:0, width:1023, height:768, image:"images/PlaylistBg-F55C34CE-1D74-4EE8-9B8F-010BBC2EA230.png"
	
imageLayer.superLayer = containerLayer
imageLayer.scale = 2
imageLayer.center()

imageLayer.animate
	properties:
		scale: 1
