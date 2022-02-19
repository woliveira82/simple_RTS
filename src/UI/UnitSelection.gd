extends Panel


var world = preload('res://src/level/World.gd')


func _ready():
	world = preload('res://src/level/World.gd')


func _on_AirUnit_button_up():
	world.instance_unit('AirUnit')


func _on_LandUnit_button_up():
	world.instance_unit('LandUnit')
