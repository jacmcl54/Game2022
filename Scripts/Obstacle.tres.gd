extends "Scroolmovemnet.gd"

func _physics_process(delta):
	move()


func _on_effectDamage_body_entered(body):
	if body.name == "player":
		Signals.emit_signal("killplayer")
		queue_free()
	


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
