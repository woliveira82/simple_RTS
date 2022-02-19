extends Camera2D

func _process(delta):
		var movement = Vector2.ZERO
		movement.x = Input.get_action_strength('ui_right') - Input.get_action_strength('ui_left')
		movement.y = Input.get_action_strength('ui_down') - Input.get_action_strength('ui_up')
		movement = movement.normalized() * 10
		var new_position = position + movement
		new_position.x = max(512, new_position.x)
		new_position.x = min(1516, new_position.x)
		new_position.y = max(300, new_position.y)
		new_position.y = min(1728, new_position.y)
		position = new_position



