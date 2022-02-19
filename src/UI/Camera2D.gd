extends Camera2D

var map_size = Vector2(2048, 2048)
var zoom_min = Vector2(1.0, 1.0)
var zoom_max = Vector2(2.0, 2.0)
var zoom_speed = Vector2(0.1, 0.1)


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


func _input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			if event.button_index == BUTTON_WHEEL_UP:
				if zoom > zoom_min:
					zoom -= zoom_speed
			elif event.button_index == BUTTON_WHEEL_DOWN:
				if zoom < zoom_max:
					zoom += zoom_speed



