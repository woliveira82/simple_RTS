extends Control

onready var BaseNameLabel = $RichTextLabel
onready var BaseTexture = $TextureRect


func base_selected(military_base):
	_show_hud()
	BaseNameLabel.text = military_base['base_name']
	BaseTexture.texture = military_base['texture']


func _show_hud():
	visible = true


func _hide_hud():
	visible = false
