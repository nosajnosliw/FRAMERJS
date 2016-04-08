	###
		SETUP
	###
	
	Framer.Defaults.Layer.backgroundColor = null
	
	layerA = new Layer
		x: 20
		y: 20
		width: 500
		height: 120
		
	layerB = layerA.copy()
	layerB.height = 300
	layerB.y = 160
	
	
	
	###
		EXAMPLE CODE
	###
	
	Utils.insertCSS "
		.structuredHTML {
			color: #000000;
			font-family: Helvetica, Arial, sans-serif;
			line-height: 1.2em;
		}
		.structuredHTML p {
			font-style: oblique;
			font-size: 24px;
			font-weight: 300;
		}
		.structuredHTML h1 {
			font-size: 48px;
			font-weight: bold;
			line-height: 1.4em;
		}
		.structuredHTML h6 {
			font-size: 18px;
			font-weight: normal;
			line-height: 2em;
		}
	"
	
	layerA.html = "Etsy leggings hella plaid banjo fixie four loko. DIY Bushwick iPhone taxidermy, typewriter banjo Etsy ethical church-key brunch fingerstache PBR."
	
	layerA.style = 
		color: "#000000"
		fontSize: "16px"
		fontFamily: "Helvetica, Arial, sans-serif"
		
	layerB.html = "<div class='structuredHTML'><h1>High Life</h1><p>Gluten-free <strong>try-hard kitsch</strong>, single-origin coffee chambray keytar master cleanse.</p><h6>- kale chips photo booth</h6></div>"
	
	
			
