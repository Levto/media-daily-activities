extends TextureButton

@onready var bgm = $bgm

var playback = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	bgm.stream.loop = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_toggled(button_pressed):
	if button_pressed:
		playback = bgm.get_playback_position()
		bgm.stop()
	else:
		bgm.play(playback)
		
