extends TextureButton

@export var target_scene: String

# Called when the node enters the scene tree for the first time.
func _ready():
	if get_parent().name != "vocab_A_menu":
		position = Vector2(50,40)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	get_tree().change_scene_to_file("res://display_scenes/" + target_scene + ".tscn")
