extends Control
#const Deck = preload("res://UtilClasses/deck_class.gd")
var deck = Deck.new()
var players_decks = []
var card = preload("res://Components/Card.tscn")
#var new_card = card.instantiate()
@export var number_of_players = 3
@export var number_of_cards = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	# Initialize decks for each player
	for i in range(number_of_players):
		players_decks.append([])

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_shuffle_deck_button_down():
	deck.shuffle()
	$Panel/OutputBox.text = "Deck Shuffled"

func _on_draw_button_down():
	for i in range(number_of_players):
		for j in range(number_of_cards):
			players_decks[i].append(deck.deal_card())
	$Panel/OutputBox.text = "Cards drawn"

func _on_output_button_down():
	var output_text = ""
	for i in range(number_of_players):
		output_text += "Player " + str(i+1) + " Deck: \n"
		for card in players_decks[i]:
			output_text += card._to_string() + "\n"
	$Panel/OutputBox.text = output_text

func _on_show_deck_button_down():
	var deck_text = "Deck: \n"
	for card in deck.cards:
		deck_text += card._to_string() + "\n"
	$Panel/OutputBox.text = deck_text


func _on_display_card_button_down():
	const offset_x = 50
	for i in range(number_of_players):
		var j = 800
		for each_card in players_decks[i]:
			var new_card = card.instantiate()
			new_card.set_properties(each_card._to_string(),false)
			add_child(new_card)
			new_card.position = Vector2(j,(i*100))
			j += offset_x
			

