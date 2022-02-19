extends Sprite

export var base_name = 'Military Base'
export var team = 0
var units = []


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		get_tree().call_group('HUD', 'base_selected', _get_base_data())


func _get_base_data():
	return {
	'base_name': base_name,
	'units': units,
	'team': team,
	'texture': texture
}
