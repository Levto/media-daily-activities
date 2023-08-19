extends Control

@onready var dialogue = $dialogue_box/db_margin/db_vbox_container/dialogue
@onready var malkuth = $malkuth
@onready var content = $content
@onready var next = $dialogue_box/dialogue_next
@onready var prev = $dialogue_box/dialogue_prev
@onready var sfx_player = $sfx_player

var key = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	if main_dictionaries.selected_lesson == null:
		main_dictionaries.selected_lesson = "lesson_1"
	dialogue.visible_characters = 0
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var malkuth_file_name = main_dictionaries.lesson_vn_resource[main_dictionaries.selected_lesson][str(key)].malkuth
	var content_file_name = main_dictionaries.lesson_vn_resource[main_dictionaries.selected_lesson][str(key)].content
	
	dialogue.text = main_dictionaries.lesson_vn_resource[main_dictionaries.selected_lesson][str(key)].text
	malkuth.texture = load("res://resources/images/malkuth/" + malkuth_file_name + ".png")
	if content_file_name != "":
		content.texture = load("res://resources/images/lesson_contents/" + main_dictionaries.selected_lesson + "/" + content_file_name+ ".png")
	
	var dialogue_length = dialogue.get_total_character_count()
	var lesson_length = main_dictionaries.lesson_vn_resource[main_dictionaries.selected_lesson].size()
	
	if key == 1:
		prev.visible = false
	else:
		prev.visible = true
	if key == lesson_length: # or dialogue.visible_characters < dialogue_length:
		next.visible = false
	else:
		next.visible = true
	
func _on_dialogue_prev_pressed():
	key -= 1
	dialogue.visible_characters = 0
	$Timer.start()
	
	sfx_player.stream = load("res://resources/sfx/Card_Over.wav")
	sfx_player.play()

func _on_dialogue_next_pressed():
	var dialogue_length = dialogue.get_total_character_count()
	var lesson_length = main_dictionaries.lesson_vn_resource[main_dictionaries.selected_lesson].size()
	
	if key == lesson_length - 1:
		#check if lesson finished checker has input the current lesson or not, if not, then append it
		#then check if all lesson has been finished or not
		if not main_dictionaries.lesson_finished_checker.has(main_dictionaries.selected_lesson):
			main_dictionaries.lesson_finished_checker.append(main_dictionaries.selected_lesson)
		main_dictionaries.lesson_finished = main_dictionaries.check_lesson_finished()
		print(main_dictionaries.lesson_finished)
		
	if dialogue.visible_characters != dialogue_length:
		sfx_player.stream = load("res://resources/sfx/Card_Over.wav")
		sfx_player.play()
	
		dialogue.visible_characters = dialogue_length
	else:
		sfx_player.stream = load("res://resources/sfx/Card_Apply.wav")
		sfx_player.play()
	
		key += 1
		dialogue.visible_characters = 0
		$Timer.start()

func _on_timer_timeout():
	var dialogue_length = dialogue.get_total_character_count()
	
	if dialogue.visible_characters < dialogue_length:
		dialogue.visible_characters +=1
	else:
		$Timer.stop()
