class_name Deck extends Node

const CardOBJ = preload("res://UtilClasses/card_class.gd")

var cards =[]

func _init():
	populate()

func populate():
	var suits = ["hearts", "diamonds", "clubs", "spades"]
	var values = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "jack", "queen", "king", "ace"]
	for suit in suits:
		for value in values:
			var card = Card.new(suit, value)
			cards.append(card)


func shuffle():
	cards.shuffle()


func deal_card():
	if cards.size() == 0:
		return null
	return cards.pop_back()
