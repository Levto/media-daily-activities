extends AudioStreamPlayer2D


# Called when the node enters the scene tree for the first time.
func _ready():
	stream.loop = true
	if main_dictionaries.bgm_playing:
		if main_dictionaries.bgm_playback:
			play(main_dictionaries.bgm_playback)
		else:
			play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta): 
	#playing = main_dictionaries.bgm_playing
	pass

func _exit_tree():
	main_dictionaries.bgm_playback = get_playback_position()
	playing = false
	


func _on_bgm_toggle_toggled(button_pressed):
	if button_pressed:
		main_dictionaries.bgm_playback = get_playback_position()
		playing = false
		main_dictionaries.bgm_playing = false
	else:
		main_dictionaries.bgm_playing = true
		if main_dictionaries.bgm_playback:
			play(main_dictionaries.bgm_playback)
		else:
			play()
