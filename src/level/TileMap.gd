extends Node2D


export (PackedScene) var AirUnit


func _input(event):
	if event.is_action_pressed("click"):
		print("click")
		var new_unit = AirUnit.instance()
		new_unit.position = get_viewport().get_mouse_position()
		get_parent().add_child(new_unit)


#extends Node2D


#export (PackedScene) var AirUnit


#func _input(event):
#	if event.is_action_pressed("click"):
#		print("click")
#		var new_unit = AirUnit.instance()
#		new_unit.position = get_viewport().get_mouse_position()
#		add_child(new_unit)


#export (PackedScene) var Ball

#func _input(event):
#	if event.is_action_pressed("click"):
#		var new_ball = Ball.instance()
#		new_ball.position = get_viewport().get_mouse_position()
#		add_child(new_ball)

