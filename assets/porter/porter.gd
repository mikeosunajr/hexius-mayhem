extends KinematicBody2D

export (int) var speed = 400

export var path = PoolVector2Array()
var lastDirection = "%s_d"

func add_direction(anim):
	if path.size() == 0:
		return lastDirection % anim
		
	var direction = path[0] - position
	if abs(direction.x) > abs(direction.y):
		if direction.x > 0:
			lastDirection = "%s_r"
		else:
			lastDirection = "%s_l"
	elif direction.y > 0:
		lastDirection = "%s_d"
	else:
		lastDirection = "%s_u"
	return lastDirection % anim

func _process(delta):
	# Calculate the movement distance for this frame
	var distance_to_walk = speed * delta
	
	# Move the player along the path until he has run out of movement or the path ends.
	while distance_to_walk > 0 and path.size() > 0:
		var distance_to_next_point = position.distance_to(path[0])
		if distance_to_walk <= distance_to_next_point:
			# The player does not have enough movement left to get to the next point.
			position += position.direction_to(path[0]) * distance_to_walk
		else:
			# The player get to the next point
			position = path[0]
			path.remove(0)
		# Update the distance to walk
		distance_to_walk -= distance_to_next_point
		
	if path.size() > 0:
		$Sprite.play(add_direction("walk"))
	else:
		$Sprite.play(add_direction("stand"))
	