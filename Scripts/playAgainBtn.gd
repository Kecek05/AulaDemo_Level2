extends TextureButton



func _on_playAgainBtn_pressed():
	get_tree().change_scene_to_file("res://Scenes/Game.tscn")
