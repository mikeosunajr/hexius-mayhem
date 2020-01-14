extends KinematicBody2D

export (int) var speed = 400

var target = Vector2()
var velocity = Vector2()
var up_right = Vector2(1, 1).normalized()

func _input(event):
	if event.is_action_pressed('click'):
		target = get_global_mouse_position()

func default():
	$Sprite.play(add_direction("stand"))

func add_direction(anim):
	if abs(velocity.x) > abs(velocity.y):
		if velocity.x > 0:
			return "%s_r" % anim
		else:
			return "%s_l" % anim
	elif velocity.y > 0:
		return "%s_d" % anim
	else:
		return "%s_u" % anim

func walk():
	var collide = move_and_collide(velocity)
	if collide:
		default()
		target = position
		velocity = Vector2.ZERO
	else:
		$Sprite.play(add_direction("walk"))

func _physics_process(delta):
	velocity = (target - position).normalized() * speed * delta
	# rotation = velocity.angle()
	if (target - position).length() > 5:
		walk()
	else:
		default()