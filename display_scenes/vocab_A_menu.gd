extends Control

@onready var english_word = $margin_container/h_box_container/vocab_resources/margin_container/v_box_container/HBoxContainer/english_word
@onready var translation = $margin_container/h_box_container/vocab_resources/margin_container/v_box_container/translation
@onready var illustration = $margin_container/h_box_container/vocab_resources/margin_container/v_box_container/illustration_margin/illustration
@onready var example = $margin_container/h_box_container/vocab_resources/margin_container/v_box_container/contents_container/example
@onready var input_text = $margin_container/h_box_container/vocab_resources/margin_container/v_box_container/word_input_container/h_box_container/MarginContainer/text_input
@onready var input_container = $margin_container/h_box_container/vocab_resources/margin_container/v_box_container/word_input_container
@onready var content = $margin_container/h_box_container/vocab_resources/margin_container/v_box_container/contents_container
@onready var prev_button = $margin_container/h_box_container/vocab_resources/margin_container/v_box_container/contents_container/prev_next_buttons/previous
@onready var next_buton = $margin_container/h_box_container/vocab_resources/margin_container/v_box_container/contents_container/prev_next_buttons/next
@onready var wrong_warning = $margin_container/h_box_container/vocab_resources/margin_container/v_box_container/word_input_container/wrong_warning
@onready var word_audio = $word_audio
@onready var sfx_player = $sfx_player

var word_change_checker

var current_word_number : int

# Called when the node enters the scene tree for the first time.
func _ready():
	word_change_checker = english_word.text
	wrong_warning.visible = false
	load_vocab()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#check for change of the selected word, then play audio
	if word_change_checker != english_word.text:
		word_audio.stream = load("res://resources/word_audio/" + english_word.text + ".wav")
		word_audio.play()
		word_change_checker = english_word.text
	load_vocab()
	
	
func load_vocab():
	#get data from main dictionary
	current_word_number = main_dictionaries.selected_target
	english_word.text = main_dictionaries.vocab_a[str(current_word_number)].english_word
	translation.text = main_dictionaries.vocab_a[str(current_word_number)].translation
	illustration.texture = load("res://resources/images/illustrations/" + english_word.text + ".png")
	example.text = main_dictionaries.vocab_a[str(current_word_number)].example
	
	#set visibility of contents
	if main_dictionaries.vocab_a[str(current_word_number)].input_done:
		content.visible = true
		input_container.visible = false
	else:
		content.visible = false
		input_container.visible = true
		
	if current_word_number <= 1:
		prev_button.visible = false
		$margin_container/h_box_container/vocab_resources/margin_container/v_box_container/contents_container/prev_next_buttons/margin.visible = false
	else:
		prev_button.visible = true
		$margin_container/h_box_container/vocab_resources/margin_container/v_box_container/contents_container/prev_next_buttons/margin.visible = true
	
	if current_word_number >= main_dictionaries.vocab_a.size():
		next_buton.visible = false
	else:
		next_buton.visible = true
		

func _on_submit_button_pressed():
	var check_input = input_text.get_text().matchn(english_word.text)
	
	sfx_player.stream = load("res://resources/sfx/Card_Apply.wav")
	sfx_player.play()
	
	if check_input:
		input_text.clear()
		wrong_warning.visible = false
		main_dictionaries.vocab_a[str(current_word_number)].input_done = true
		if current_word_number < main_dictionaries.vocab_a.size():
			main_dictionaries.vocab_a[str(current_word_number + 1)].locked = false
		
		#check if all vocabuaries has been input done and library is finished
		main_dictionaries.library_finished = main_dictionaries.check_library_finished()
		#print(main_dictionaries.library_finished)
		
	else:
		wrong_warning.visible = true


func _on_previous_pressed():
	sfx_player.stream = load("res://resources/sfx/Card_Over.wav")
	sfx_player.play()
	main_dictionaries.selected_target -= 1


func _on_next_pressed():
	sfx_player.stream = load("res://resources/sfx/Card_Over.wav")
	sfx_player.play()
	main_dictionaries.selected_target += 1

func _on_text_input_text_submitted(new_text):
	var check_input = new_text.matchn(english_word.text)
	
	sfx_player.stream = load("res://resources/sfx/Card_Apply.wav")
	sfx_player.play()
	
	#input_text.get_text().matchn(english_word.text)
	
	if check_input:
		input_text.clear()
		wrong_warning.visible = false
		main_dictionaries.vocab_a[str(current_word_number)].input_done = true
		if current_word_number < main_dictionaries.vocab_a.size():
			main_dictionaries.vocab_a[str(current_word_number + 1)].locked = false
	else:
		wrong_warning.visible = true


func _on_word_audio_pressed():
	word_audio.stream = load("res://resources/word_audio/" + english_word.text + ".wav")
	word_audio.play()


func _on_unlocker_pressed():
	#UNLOCK EVERYTHING
	for i in main_dictionaries.vocab_a:
		if not i == "40":
			main_dictionaries.vocab_a[i].input_done = true
			main_dictionaries.vocab_a[i].locked = false
		else:
			main_dictionaries.vocab_a[i].locked = false
