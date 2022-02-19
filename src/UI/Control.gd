extends Control

onready var BaseNameLabel = $RichTextLabel
onready var BaseTexture = $TextureRect


func base_selected(military_base):
	_show_hud()
	BaseNameLabel.text = military_base['base_name']
	BaseTexture.texture = military_base['texture']


func _show_hud():
	rect_position.y = lerp(rect_position.y, 184, 1.0)


func _hide_hud():
	rect_position.y = lerp(rect_position.y, 305, 1.0)
