class_name Deck extends Node

const Card = preload("res://UtilClasses/card_class.gd")

var cards =[]

func _init():
	populate()

func populate():
	var suits = ["Hearts", "Diamonds", "Clubs", "Spades"]
	var values = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]
	for suit in suits:
		for value in values:
			var card = Card.new(suit, value)
			cards.append(card)
			cards.append(card)

func shuffle():
	cards.shuffle()
	print("Deck Shuffled")

func deal_card():
	if cards.size() == 0:
		return null
	return cards.pop_back()
