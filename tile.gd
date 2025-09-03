extends Node2D
class_name Tile

@onready var icon: Sprite2D = $Icon

var color: Color = Color.WHITE

func _ready() -> void:
	icon.modulate = color
"res://Hexagon.svg.bmp"
