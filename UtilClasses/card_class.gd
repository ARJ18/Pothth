class_name Card extends Node
var face_value
var suit
var color

func _init(suit_in,value_in):
	face_value = value_in
	suit = suit_in

func _to_string():
	return face_value + "_of_" + suit
