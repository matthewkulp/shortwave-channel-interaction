# This imports all the layers for "channel-framer" into channelFramerLayers1
channelFramer = Framer.Importer.load "imported/channel-framer"

channelFramer["Leave_Channel"].visible = false

Framer.Defaults.Animation =
	time: .30
	curve: 'spring'
	curveOptions:
		tension: 190
		friction: 23
		velocity: 10

LeaveChannel = channelFramer["Leave_Channel_Wide"]
LeaveButton = channelFramer["Buttons"]
buttonActive = false

console.log("LeaveChannel x: " + LeaveChannel.x)
console.log("LeaveChannel y: " + LeaveChannel.y)
console.log("LeaveButton x: " + LeaveButton.x)
console.log("LeaveButton y: " + LeaveButton.y)

LeaveChannel.x = 650
LeaveChannel.style.pointerEvents = "none"
buttonSize = 50


minimize = new Layer
	width: 640
	height: 640
	y: 495
	backgroundColor: 'transparent'


LeaveButton.on Events.Click, ->
	LeaveButton.animate
		properties:
			x: -1800
	
	LeaveChannel.animate
		properties: 
			x: -85

			
minimize.on Events.Click, ->
	LeaveButton.animate
		properties:
			x: 105
	
	LeaveChannel.animate
		properties: 
			x: 650		
	


