extends KinematicBody2D

var motion = Vector2()
const SPEED = 100

func movement():
	var left = Input.is_action_pressed("ui_left")
	var right = Input.is_action_pressed("ui_right")
	
	if left:
		motion.x = -SPEED
	elif right:
		motion.x = SPEED
	else:
		motion.x = 0
	motion = move_and_slide(motion)
	
func _physics_process(delta):
	movement()
