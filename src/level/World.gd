extends Node2D


export (PackedScene) var AirUnit
export (PackedScene) var LandUnit

var click_position = Vector2.ZERO
onready var Panel = $Panel


func _input(event):
#	if not Panel.visible:
#		if event.is_action_pressed("click"):
#			click_position = get_viewport().get_mouse_position()
#			Panel.rect_position = get_viewport().get_mouse_position()
#			Panel.visible = true
	pass


func instance_unit(unit_name):
	Panel.visible = false
	var new_unit = null
	if unit_name == 'AirUnit':
		new_unit = AirUnit.instance()
	else:
		new_unit = LandUnit.instance()

	new_unit.set_base_position(Vector2(481, 352))
	add_child(new_unit)
	new_unit.set_destiny(click_position)
	
	
