extends Button

export(String) var scene_to_load

func _on_QuitButton_pressed():
	OS.alert("bye bye")
	OS.alert("You have been hacked")
	OS.alert("please give us your credit card number")
	OS.alert("Your PC will explode in 30 seconds.")
	OS.alert("You shouldve never quit")
	get_tree().quit()
