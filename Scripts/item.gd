extends "Scroolmovemnet.gd"

func _physics_process(delta):
	move() 


func _on_pickup_body_entered(body):
	print("player picked up berry")
