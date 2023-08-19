extends Control

@onready var enter_name = $VBoxContainer/HBoxContainer/enter_name
@onready var name_edit = $VBoxContainer/HBoxContainer/name_edit
@onready var error_msg = $VBoxContainer/error_msg

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_name_edit_text_submitted(new_text):
	check_name(new_text)


func _on_enter_name_pressed():
	var name = name_edit.get_text()
	
	check_name(name)


func check_name(name):
	if name.is_empty():
		error_msg.visible = true
		name_edit.clear()
	else:
		main_dictionaries.player_name = name
		print(main_dictionaries.player_name)
		get_tree().change_scene_to_file("res://display_scenes/main_menu.tscn")
	
