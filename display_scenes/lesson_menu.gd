extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	for button in get_tree().get_nodes_in_group("start_button"):
		button.pressed.connect(start_button_pressed.bind(button))
	check_new_indicator()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func start_button_pressed(button):
	main_dictionaries.selected_lesson = button.name
	get_tree().change_scene_to_file("res://display_scenes/lesson_content.tscn")

func check_new_indicator():
	for new_indicator in get_tree().get_nodes_in_group("new_indicator"):
		if main_dictionaries.lesson_finished_checker.has(new_indicator.name):
			new_indicator.visible = false


func _on_unlocker_pressed():
	main_dictionaries.lesson_finished_checker = ["lesson_1", "lesson_2", "lesson_3", "lesson_4", "lesson_5"]
	check_new_indicator()
	main_dictionaries.check_lesson_finished()
	#print(main_dictionaries.lesson_finished)
