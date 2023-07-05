# Stores all dictionaries for vocabularies
extends Node

var selected_target: int = 1

var vocab_a = {
	"1": {
		"english_word": "Wake Up",
		"translation": "Bangun Tidur",
		"example": "I wake up at 5AM.\nAku bangun tidur pada pukul 5 pagi.",
		"input_done": false,
		"locked": false
	},
	"2": {
		"english_word": "Eat",
		"translation": "Makan",
		"example": "I eat an apple.\nAku makan sebuah apel.",
		"input_done": false,
		"locked": true
	},
	"3": {
		"english_word": "Play",
		"translation": "Bermain",
		"example": "I play games in my handphone.\nAku bermain gim di handphoneku.",
		"input_done": false,
		"locked": true
	},
	"4": {
		"english_word": "Sleep",
		"translation": "Tidur",
		"example": "I sleep at night.\nAku tidur pada malam hari.",
		"input_done": false,
		"locked": true
	}
}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
