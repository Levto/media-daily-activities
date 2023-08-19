extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	for button in get_tree().get_nodes_in_group("nav_button"):
		button.pressed.connect(nav_button_pressed.bind(button))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func nav_button_pressed(button):
	for content in get_tree().get_nodes_in_group("content"):
		if content.name != button.name:
			content.visible = false
		else:
			content.visible = true
