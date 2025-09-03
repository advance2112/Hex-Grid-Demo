extends Node2D
class_name Tile

@onready var icon: Sprite2D = $Icon
@onready var texture_button: TextureButton = $TextureButton

var color: Color = Color.WHITE

func _ready() -> void:
	icon.modulate = color
	texture_button.modulate = color
"res://Hexagon.svg.bmp"
