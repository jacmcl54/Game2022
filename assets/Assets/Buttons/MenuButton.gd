extends Button

export(String) var scene_to_load

func _on_QuitButton_pressed():
	OS.alert("bye bye")
	get_tree().quit()
