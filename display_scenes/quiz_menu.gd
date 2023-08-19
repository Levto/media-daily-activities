extends Control

@onready var quiz_1_locked_text= $VBoxContainer/NinePatchRect/MarginContainer/VBoxContainer/quiz_1/locked_text
@onready var quiz_2_locked_text = $VBoxContainer/NinePatchRect/MarginContainer/VBoxContainer/quiz_2/locked_text
@onready var quiz_1_button = $VBoxContainer/NinePatchRect/MarginContainer/VBoxContainer/quiz_1/button_margin/quiz_a
@onready var quiz_2_button = $VBoxContainer/NinePatchRect/MarginContainer/VBoxContainer/quiz_2/button_margin/quiz_b
@onready var library_button = $VBoxContainer/NinePatchRect/MarginContainer/VBoxContainer/quiz_1/button_margin/library
@onready var class_button = $VBoxContainer/NinePatchRect/MarginContainer/VBoxContainer/quiz_2/button_margin/class


# Called when the node enters the scene tree for the first time.
func _ready():
	main_dictionaries.check_library_finished()
	main_dictionaries.check_lesson_finished()
	
	if main_dictionaries.library_finished:
		quiz_1_locked_text.visible = false
		quiz_1_button.visible = true
		library_button.visible = false
	else:
		quiz_1_locked_text.visible = true
		quiz_1_button.visible = false
		library_button.visible = true
		
	if main_dictionaries.lesson_finished:
		quiz_2_locked_text.visible = false
		quiz_2_button.visible = true
		class_button.visible = false
	else:
		quiz_2_locked_text.visible = true
		quiz_2_button.visible = false
		class_button.visible = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_quiz_a_pressed():
	get_tree().change_scene_to_file("res://display_scenes/quiz_a.tscn")


func _on_quiz_b_button_down():
	get_tree().change_scene_to_file("res://display_scenes/quiz_b.tscn")


func _on_library_pressed():
	get_tree().change_scene_to_file("res://display_scenes/vocab_A_menu.tscn")


func _on_class_pressed():
	get_tree().change_scene_to_file("res://display_scenes/lesson_menu.tscn")
