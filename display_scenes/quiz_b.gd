extends Control

@onready var quiz_set = $quiz_set
@onready var question_text = $quiz_set/question
@onready var inputed_text_display = $quiz_set/inputed_text_display
@onready var submit = $submit
@onready var result_indicator = $result_indicator
@onready var result_text = $quiz_set/result
@onready var next = $next
@onready var result_set = $result_set
@onready var encouragement_words = $result_set/encouragement_words
@onready var clear_sentence = $quiz_set/splitter3/clear_sentence
@onready var tiphereth = $tiphereth
@onready var sfx_player = $sfx_player

var correct_answer_count = 0
var incorrect_answer_count = 0
var answered_question_count = 0

var question_set = []
var words_randomized = []
var inputed_words = []

# Called when the node enters the scene tree for the first time.
func _ready():	
	$guide_overlay.visible = true
	quiz_set.visible = false
	result_indicator.visible = false
	result_text.visible = false
	next.visible = false
	submit.visible = false
	sfx_player.stream = load("res://resources/sfx/RoundStart.wav")
	sfx_player.play()
	for word_button in get_tree().get_nodes_in_group("word_button"):
		word_button.pressed.connect(word_button_pressed.bind(word_button))
	init_question_set()
	print(quiz_resources.quiz_b[question_set[answered_question_count]].words)
	load_question_set()
	print(quiz_resources.quiz_b[question_set[answered_question_count]].words)
	
	$quiz_set/question_number.text = "Question No. " + str(answered_question_count + 1)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):		
	for word_button in get_tree().get_nodes_in_group("word_button"):
		if not inputed_words.has(word_button.text):
			word_button.disabled = false
	
	if inputed_words and next.visible == false:
		submit.visible = true
	elif inputed_words.is_empty():
		submit.visible = false
	
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

func init_question_set():
	question_set.clear()
	#assign question number as keys from quiz resources to grab its key as question later
	for keys in quiz_resources.quiz_b:
		question_set.append(keys)
		question_set.shuffle()
	

func load_question_set():
	#clear previous words
	words_randomized.clear()
	#grab the words from database based on the randomized question number set, then shuffle it
	for word in quiz_resources.quiz_b[question_set[answered_question_count]].words:
		words_randomized.append(word)
	while words_randomized == quiz_resources.quiz_b[question_set[answered_question_count]].words:
		words_randomized.shuffle()
		
	#assign words to each buttons
	for word_button in get_tree().get_nodes_in_group("word_button"):
		#gets node name as code to get index in words_randomized
		var current_button_number_code = int(str(word_button.name))
		#check words count to be assigned for each buttons. for buttons without words, assign empty text
		if words_randomized.size() > current_button_number_code:
			print(words_randomized[current_button_number_code])
			word_button.text = words_randomized[current_button_number_code]
		else:
			word_button.text = ""
	#set invisible if the button has no text
		if word_button.text == "":
			word_button.visible = false
		else:
			word_button.visible = true
		
	$quiz_set/question_number.text = "Question No. " + str(answered_question_count + 1)
	
	question_text.text = "[center]Arrange these words into this sentence:\n[color=yellow]" + quiz_resources.quiz_b[question_set[answered_question_count]].translation + "[/color][/center]"

func refresh_displayed_text():
	inputed_text_display.text = ""
	
	for word in inputed_words:
		if word:
			inputed_text_display.text += word + " "
		
	if inputed_text_display.text == "":
		inputed_text_display.text = "Press Any Button Below To Write The Word.."
	
func word_button_pressed(word_button):
	inputed_words.append(word_button.text)
	word_button.disabled = true
	refresh_displayed_text()
	sfx_player.stream = load("res://resources/sfx/Card_Over.wav")
	sfx_player.play()

func _on_clear_sentence_pressed():
	inputed_words.clear()
	sfx_player.stream = load("res://resources/sfx/Card_Over.wav")
	sfx_player.play()
	refresh_displayed_text()


func _on_submit_pressed():
	sfx_player.stream = load("res://resources/sfx/Card_Apply.wav")
	sfx_player.play()
	result_text.visible = true
	result_indicator.visible = true
	
	for word_button in get_tree().get_nodes_in_group("word_button"):
		word_button.visible = false
	clear_sentence.visible = false
	
	var correct_answer = ""
	for word in quiz_resources.quiz_b[question_set[answered_question_count]].words:
		print(quiz_resources.quiz_b[question_set[answered_question_count]].words)
		correct_answer += word + " "
	
	if inputed_words == quiz_resources.quiz_b[question_set[answered_question_count]].words:
		correct_answer_count += 1
		result_indicator.texture = load("res://resources/images/Answer_Correct.png")
		result_text.text = "[center][color=lime]Correct! The answer is:\n[color=yellow]" + correct_answer + "[/color][/color][center]"
		tiphereth.texture = load("res://resources/images/tiphereth/2.png")
	else:
		incorrect_answer_count += 1
		result_indicator.texture = load("res://resources/images/Answer_Wrong.png")
		tiphereth.texture = load("res://resources/images/tiphereth/3.png")
		result_text.text = "[center][color=orange]Incorrect.. The correct sentence is:\n[color=yellow]" + correct_answer + "[/color][/color][center]"
	answered_question_count += 1
	
	next.visible = true
	submit.visible = false
	clear_sentence.disabled = true

func _on_next_pressed():
	clear_sentence.visible = true
	result_text.visible = false
	result_indicator.visible = false
	next.visible = false
	clear_sentence.disabled = false
	tiphereth.texture = load("res://resources/images/tiphereth/1.png")
	inputed_words.clear()
	refresh_displayed_text()
	
	#change this to 10 later after you add the contents
	if answered_question_count == 10:
		load_results()
		quiz_set.visible = false
		result_set.visible = true
		sfx_player.stream = load("res://resources/sfx/Battle_TurnEnd.wav")
		sfx_player.play()
	else:
		load_question_set()
		sfx_player.stream = load("res://resources/sfx/Finger_Snapping.wav")
		sfx_player.play()


func _on_retake_quiz_pressed():
	correct_answer_count = 0
	incorrect_answer_count = 0
	answered_question_count = 0
	inputed_words.clear()
	refresh_displayed_text()
	init_question_set()
	load_question_set()
	quiz_set.visible = true
	result_set.visible = false
	tiphereth.texture = load("res://resources/images/tiphereth/1.png")
	sfx_player.stream = load("res://resources/sfx/Finger_Snapping.wav")
	sfx_player.play()


func _on_guide_overlay_tree_exited():
	sfx_player.stream = load("res://resources/sfx/Finger_Snapping.wav")
	sfx_player.play()
	
	quiz_set.visible = true


func _on_retake_quiz_2_pressed():
	get_tree().change_scene_to_file("res://display_scenes/quiz_menu.tscn")
