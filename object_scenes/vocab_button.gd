extends MarginContainer

@export var target: int 

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("new_flash")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if target:
		$Button.text = str(target) + ". " + main_dictionaries.vocab_a[str(target)].english_word
		if main_dictionaries.vocab_a[str(target)].locked:
			$Button.disabled = true
		else:
			$Button.disabled = false
			
		if not main_dictionaries.vocab_a[str(target)].locked and not main_dictionaries.vocab_a[str(target)].input_done:
			$Button/Label.visible = true
		else:
			$Button/Label.visible = false
		if target == main_dictionaries.selected_target:
			pass

func _on_button_pressed():
	main_dictionaries.selected_target = target
