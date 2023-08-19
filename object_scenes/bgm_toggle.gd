extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready():
	if main_dictionaries.bgm_playing == false:
		button_pressed = true
	set_position(Vector2(1170,40))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_toggled(button_pressed):
	if button_pressed:
		main_dictionaries.bgm_playback = false
	else:
		main_dictionaries.bgm_playback = true
