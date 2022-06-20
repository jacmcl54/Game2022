extends "Scroolmovemnet.gd"

func _physics_process(delta):
	move() 


func _on_pickup_body_entered(body):
	if body.name == "player":
		Signals.emit_signal("rewardplayer",1)
		queue_free()


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
