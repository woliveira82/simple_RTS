extends KinematicBody2D


var speed = 300
var _destiny = null
var _base_position = null
var _rest = false


func set_destiny(destiny):
	_destiny = destiny


func set_base_position(base_position):
	self.position = base_position
	_base_position = base_position


func _process(delta):
	look_at(_destiny)
	if _destiny:
		self.position = self.position.move_toward(_destiny, delta * speed)
	
	if position == _destiny:
		set_destiny(_base_position)
	
	if position == _base_position:
		queue_free()
