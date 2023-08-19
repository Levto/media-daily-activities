extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_pressed():
	get_tree().change_scene_to_file("res://display_scenes/start_menu.tscn")


func _on_quiz_pressed():
	get_tree().change_scene_to_file("res://display_scenes/quiz_menu.tscn")


func _on_help_pressed():
	get_tree().change_scene_to_file("res://display_scenes/help.tscn")


func _on_about_pressed():
	get_tree().change_scene_to_file("res://display_scenes/about.tscn")
