extends CharacterBody2D

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("ui_right"):
		velocity.x = 200 #go right
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -200 #go left
	else:
		velocity.x = 0 # stop
		
	velocity.y += 20 #same as velocity.y = velocity.y + 20
	
	
	if Input.is_action_pressed("ui_up"):
		if is_on_floor():
			velocity.y = -300
	
	move_and_slide()
