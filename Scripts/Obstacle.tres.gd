extends "Scroolmovemnet.gd"

func _physics_process(delta):
	move()


func _on_effectDamage_body_entered(body):
	if body.name == "Player":
		print("death")
	
