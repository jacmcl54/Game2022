extends KinematicBody2D

const UP = Vector2(0,-1)
const SPEED = 100
var gravity = 20
var jump_height =-400
var motion = Vector2()

func _physics_process(delta):
	motion = move_and_slide(motion, UP)

func _process(delta):
	motion.y += gravity
	var jump = Input.is_action_pressed("ui_up")
	var left = Input.is_action_pressed("ui_left")
	var right = Input.is_action_pressed("ui_right")
	
	if left:
		motion.x = -SPEED
	elif right:
		motion.x = SPEED
	elif jump:
		if is_on_floor():
			motion.y = jump_height
	else:
		motion.x = 0
	motion = move_and_slide(motion)
	

