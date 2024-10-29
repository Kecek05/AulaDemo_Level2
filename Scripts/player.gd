extends CharacterBody2D

func _physics_process(_delta: float) -> void:
	if Input.is_action_pressed("ui_right"):
		velocity.x = 200 #go right
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -200 #go left
	else:
		velocity.x = 0 # stop
		
	velocity.y += 20 #same as velocity.y = velocity.y + 20
	
	
	if Input.is_action_pressed("ui_up"):
		if is_on_floor():
			velocity.y = -700
	
	move_and_slide()
	
	if get_slide_collision_count() > 0:
		if get_slide_collision(0).get_collider().name == "Void":
			get_tree().change_scene_to_file("res://Scenes/Lose.tscn")
			
		if get_slide_collision(0).get_collider().name == "WinZone":
			get_tree().change_scene_to_file("res://Scenes/Win.tscn")
