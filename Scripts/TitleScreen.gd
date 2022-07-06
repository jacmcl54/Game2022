extends Control


func _ready():
	$AudioStreamPlayer2D.stop()
	$Menu/CentreRow/Buttons/PlayGameButton.grab_focus()
	for button in $Menu/CentreRow/Buttons.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
	$AnimationPlayer.play("Fade in")
	yield(get_tree().create_timer(3), "timeout")
	$FadeIn.hide()
	$AudioStreamPlayer2D.play()


func _on_Button_pressed(scene_to_load):
	get_tree().change_scene(scene_to_load)
