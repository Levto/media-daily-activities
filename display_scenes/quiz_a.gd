extends Control

@onready var option_1 = $quiz_set/HBoxContainer/option_1
@onready var option_2 = $quiz_set/HBoxContainer/option_2
@onready var option_3 = $quiz_set/HBoxContainer2/option_3
@onready var option_4 = $quiz_set/HBoxContainer2/option_4
@onready var submit = $submit
@onready var next = $next
@onready var question_text = $quiz_set/question
@onready var result = $quiz_set/result
@onready var result_indicator = $result_indicator
@onready var quiz_set = $quiz_set
@onready var result_set = $result_set
@onready var encouragement_words = $result_set/encouragement_words
@onready var tiphereth = $tiphereth
@onready var sfx_player = $sfx_player

var quiz_a_words = [] #array of all vocabulary words
var question_word #picked word for the question
var answer #answer input by the user
var question_display_word #indonesian word for the displayed word in question

var words_picked_this_session = [] #list of the current session picked words for question
var endless_mode = false

var correct_answer_count = 0
var incorrect_answer_count= 0
var answered_question_count = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	for keys in main_dictionaries.vocab_a:
		var word_to_add = main_dictionaries.vocab_a[keys].english_word
		quiz_a_words.append(word_to_add)
		
	quiz_set.visible = false
	result_set.visible = false
	
	result.visible = false
	submit.visible = false
	next.visible = false
	result_indicator.visible = false
	$guide_overlay.visible = true
	
	sfx_player.stream = load("res://resources/sfx/RoundStart.wav")
	sfx_player.play()
	load_question_set("")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if answer:
		submit.visible = true
	

func load_question_set(prev_question):
	var picked_word #a randomly picked word, temp variable for this function only
	var prev_word = "" #duplicate word checker
	var question_set = [] #4 randomly picked words from the vocabulary array

	picked_word = quiz_a_words.pick_random()
	
	while question_set.size() < 4:
		if picked_word == prev_word or picked_word == prev_question or question_set.has(picked_word) or words_picked_this_session.has(picked_word):
			picked_word = quiz_a_words.pick_random()
		else:
			question_set.append(picked_word)
			prev_word = picked_word
	
	if not endless_mode:
		words_picked_this_session.append(question_word)
		
	question_word = question_set.pick_random()
	$quiz_set/illustration.texture = load("res://resources/images/illustrations/" + question_word + ".png")
	
	#getting the indo word for display
	for keys in main_dictionaries.vocab_a:
		if question_word == main_dictionaries.vocab_a[keys].english_word:
			question_display_word = main_dictionaries.vocab_a[keys].translation
			break
	
	question_text.text = "[center]Which one is the English word\nof [color=yellow]" + question_display_word + "[/color]?[/center]"
	
	option_1.text = question_set[0]
	option_2.text = question_set[1]
	option_3.text = question_set[2]
	option_4.text = question_set[3]
	
	$quiz_set/question_number.text = "Question No. " + str(answered_question_count + 1)
func load_results():
	var score : float
	score = correct_answer_count * 100 / answered_question_count
	print(score)
	$result_set/result_content.text = "Here are your results:\n\nCorrect Answers: " + str(correct_answer_count) + "\nIncorrect Answers: " + str(incorrect_answer_count) + "\n\nTotal Score:"
	$result_set/score.text = str(score)
	$result_set/name.text = main_dictionaries.player_name
	
	if score >= 100:
		tiphereth.texture = load("res://resources/images/tiphereth/2.png")
		encouragement_words.text = "Perfect score! Congratulations and\nkeep up the good work!"
	elif score >= 65:
		tiphereth.texture = load("res://resources/images/tiphereth/4.png")
		encouragement_words.text = "Good job! Keep it up on the next one!"
	else:
		tiphereth.texture = load("res://resources/images/tiphereth/5.png")
		encouragement_words.text = "Let's do better in the next one.."
	
func _on_option_1_pressed():
	answer = option_1.text
	sfx_player.stream = load("res://resources/sfx/Card_Over.wav")
	sfx_player.play()

func _on_option_2_button_down():
	answer = option_2.text
	sfx_player.stream = load("res://resources/sfx/Card_Over.wav")
	sfx_player.play()

func _on_option_3_button_down():
	answer = option_3.text
	sfx_player.stream = load("res://resources/sfx/Card_Over.wav")
	sfx_player.play()

func _on_option_4_pressed():
	answer = option_4.text
	sfx_player.stream = load("res://resources/sfx/Card_Over.wav")
	sfx_player.play()

func _on_submit_pressed():
	sfx_player.stream = load("res://resources/sfx/Card_Apply.wav")
	sfx_player.play()
	
	for button in get_tree().get_nodes_in_group("option_buttons"):
		if button.text != question_word:
			button.disabled = true
	
	result.visible = true
	result_indicator.visible = true
	
	if answer == question_word:
		correct_answer_count += 1
		tiphereth.texture = load("res://resources/images/tiphereth/2.png")
		result.text = "[center][color=lime]Correct! The English word of '[color=yellow]" + question_display_word + "[/color]' is '[color=yellow]" + question_word + "[/color]'. Keep it up![/color][/center]"
		result_indicator.texture = load("res://resources/images/Answer_Correct.png")
	else:
		incorrect_answer_count += 1
		tiphereth.texture = load("res://resources/images/tiphereth/3.png")
		result.text = "[center][color=orange]That is incorrect.... The English word of '[color=yellow]" + question_display_word + "[/color]' is '[color=yellow]" + question_word + "[/color]'.[/color][/center]"
		result_indicator.texture = load("res://resources/images/Answer_Wrong.png")
	
	answered_question_count += 1
	answer = ""
	submit.visible = false
	next.visible = true

func _on_next_pressed():	
	for button in get_tree().get_nodes_in_group("option_buttons"):
		button.disabled = false
	result.visible = false
	result_indicator.visible = false
	next.visible = false
	tiphereth.texture = load("res://resources/images/tiphereth/1.png")
	answer = ""
	submit.visible = false
	if answered_question_count < 10 and not endless_mode:
		load_question_set(question_word)
		sfx_player.stream = load("res://resources/sfx/Finger_Snapping.wav")
		sfx_player.play()
	else:
		quiz_set.visible = false
		result_set.visible = true
		load_results()
		sfx_player.stream = load("res://resources/sfx/Battle_TurnEnd.wav")
		sfx_player.play()


func _on_retake_quiz_pressed():
	correct_answer_count = 0
	incorrect_answer_count = 0
	answered_question_count = 0
	answer = ""
	words_picked_this_session = []
	tiphereth.texture = load("res://resources/images/tiphereth/1.png")
	
	load_question_set("")
	sfx_player.stream = load("res://resources/sfx/Finger_Snapping.wav")
	sfx_player.play()
	result_set.visible = false
	quiz_set.visible = true
	

func _on_guide_overlay_tree_exited():
	quiz_set.visible = true
	sfx_player.stream = load("res://resources/sfx/Finger_Snapping.wav")
	sfx_player.play()


func _on_retake_quiz_2_pressed():
	get_tree().change_scene_to_file("res://display_scenes/quiz_menu.tscn")
