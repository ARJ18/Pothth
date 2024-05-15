extends Node2D

var display_cover = true
var texture_name

func _init(name):
	texture_name = name

# Called when the node enters the scene tree for the first time.
func _ready():
	var texture_val = "res://ImageResources/PNG-cards-1.3/"+texture_name+".png"
	$TextureRect.texture = texture_val


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
