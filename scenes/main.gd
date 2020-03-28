extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	if event.is_action_pressed('click'):
		var path = $Floor.get_simple_path($Player.position, get_global_mouse_position())
		$Path.points = path
		$Player.path = path
		Globals.health
