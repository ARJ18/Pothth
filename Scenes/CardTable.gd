extends Control
#const Deck = preload("res://UtilClasses/deck_class.gd")
var deck = Deck.new()
var player1_deck = []
var player2_deck = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_shuffle_deck_button_down():
	deck.shuffle()

func _on_draw_button_down():
	for i in range(13):
		player1_deck.append(deck.deal_card())
		player2_deck.append(deck.deal_card())
	

func _on_output_button_down():
	print("Player 1 Deck: ",player1_deck)
	print("player 2 Deck: ",player2_deck)
