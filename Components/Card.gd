extends Node2D

var display_cover = true
var value

func set_properties(name,display):
	value = name
	display_cover = display
	if(display):
		var texture_val = load("res://ImageResources/PNG-cards-1.3/back_cover.png")
		$CardTexture.texture = texture_val
	else:
		var texture_val = load("res://ImageResources/PNG-cards-1.3/"+name+".png")
		$CardTexture.texture = texture_val
	

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
