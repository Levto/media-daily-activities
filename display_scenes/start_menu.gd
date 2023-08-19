extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_library_pressed():
	get_tree().change_scene_to_file("res://display_scenes/vocab_A_menu.tscn")


func _on_library_2_pressed():
	get_tree().change_scene_to_file("res://display_scenes/lesson_menu.tscn")
