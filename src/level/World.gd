extends Node2D


export (PackedScene) var AirUnit
export (PackedScene) var LandUnit


func _input(event):
	if event.is_action_pressed("click"):
		var new_unit = LandUnit.instance()
		new_unit.set_base_position(Vector2(481, 352))
		add_child(new_unit)
		new_unit.set_destiny(get_viewport().get_mouse_position())
