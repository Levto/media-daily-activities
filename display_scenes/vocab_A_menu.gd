extends Control

@onready var english_word = $margin_container/h_box_container/vocab_resources/margin_container/v_box_container/english_word
@onready var translation = $margin_container/h_box_container/vocab_resources/margin_container/v_box_container/translation
@onready var illustration = $margin_container/h_box_container/vocab_resources/margin_container/v_box_container/illustration_margin/illustration
@onready var example = $margin_container/h_box_container/vocab_resources/margin_container/v_box_container/contents_container/example
@onready var input_text = $margin_container/h_box_container/vocab_resources/margin_container/v_box_container/word_input_container/h_box_container/MarginContainer/text_input
@onready var input_container = $margin_container/h_box_container/vocab_resources/margin_container/v_box_container/word_input_container
@onready var content = $margin_container/h_box_container/vocab_resources/margin_container/v_box_container/contents_container
@onready var prev_button = $margin_container/h_box_container/vocab_resources/margin_container/v_box_container/contents_container/prev_next_buttons/previous
@onready var next_buton = $margin_container/h_box_container/vocab_resources/margin_container/v_box_container/contents_container/prev_next_buttons/next
@onready var wrong_warning = $margin_container/h_box_container/vocab_resources/margin_container/v_box_container/word_input_container/wrong_warning

var current_word_number : int

# Called when the node enters the scene tree for the first time.
func _ready():
	wrong_warning.visible = false
	load_vocab()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	load_vocab()
	
	
func load_vocab():
	current_word_number = main_dictionaries.selected_target
	english_word.text = main_dictionaries.vocab_a[str(current_word_number)].english_word
	translation.text = main_dictionaries.vocab_a[str(current_word_number)].translation
	#illustration.texture = load()
	example.text = main_dictionaries.vocab_a[str(current_word_number)].example
	
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
	
	if check_input:
		input_text.clear()
		wrong_warning.visible = false
		main_dictionaries.vocab_a[str(current_word_number)].input_done = true
		if current_word_number < main_dictionaries.vocab_a.size():
			main_dictionaries.vocab_a[str(current_word_number + 1)].locked = false
	else:
		wrong_warning.visible = true


func _on_previous_pressed():
	main_dictionaries.selected_target -= 1


func _on_next_pressed():
	main_dictionaries.selected_target += 1


func _on_texture_button_pressed():
	#UNLOCK EVERYTHING
	for i in main_dictionaries.vocab_a:
		if not i == "40":
			main_dictionaries.vocab_a[i].input_done = true
			main_dictionaries.vocab_a[i].locked = false
		else:
			main_dictionaries.vocab_a[i].locked = false


func _on_text_input_text_submitted(new_text):
	var check_input = new_text.matchn(english_word.text)
	#input_text.get_text().matchn(english_word.text)
	
	if check_input:
		input_text.clear()
		wrong_warning.visible = false
		main_dictionaries.vocab_a[str(current_word_number)].input_done = true
		if current_word_number < main_dictionaries.vocab_a.size():
			main_dictionaries.vocab_a[str(current_word_number + 1)].locked = false
	else:
		wrong_warning.visible = true
