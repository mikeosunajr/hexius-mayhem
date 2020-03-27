extends StaticBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed('click'):
		$Node2D/UI/Dialog.visible = not $Node2D/UI/Dialog.visible