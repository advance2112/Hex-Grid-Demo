extends Node2D
class_name MultimeshHexGrid

@onready var multi_mesh_instance_2d: MultiMeshInstance2D = $MultiMeshInstance2D

var grid_size: Vector2i

func _ready() -> void:
	grid_size = Constants.CHUNK_SIZE_HEXES
	multi_mesh_instance_2d.multimesh.instance_count = grid_size.x * grid_size.y
	for i in range(grid_size.x):
		for j in range(grid_size.y):
			multi_mesh_instance_2d.multimesh.set_instance_transform_2d(i*grid_size.y + j, Transform2D.IDENTITY.translated(MathUtils.get_hex_tile_position(Vector2i(i, j))))
			multi_mesh_instance_2d.multimesh.set_instance_color(i*grid_size.y + j, random_color())

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_page_up"):
		for i in range(grid_size.x):
			for j in range(grid_size.y):
				multi_mesh_instance_2d.multimesh.set_instance_color(i*grid_size.y + j, random_color())

func random_color() -> Color:
	return Color(randf(), randf(), randf())
