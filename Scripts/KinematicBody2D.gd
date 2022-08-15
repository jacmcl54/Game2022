extends KinematicBody2D

const UP = Vector2(0,-1)
const SPEED = 100
const gravity = 9.81
var jump_height =250
var motion = Vector2()

func _physics_process(delta):
	motion = move_and_slide(motion, UP)

func _process(delta):
	motion.y += gravity
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		motion.y = -jump_height
	
	if Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
		
	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED
		
	if!(Input.is_action_pressed("ui_left") or Input.is_action_pressed("ui_right")):
		motion.x = 0
		motion.x = 0
	
	motion = move_and_slide(motion)
	

