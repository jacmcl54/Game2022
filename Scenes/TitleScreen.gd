extends Control


func _ready():
	$AnimationPlayer.play("Fade in")
	yield(get_tree().create_timer(3), "timeout")
	$ColorRect.hide()
