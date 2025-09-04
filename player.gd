extends CharacterBody2D

signal moved_chunk(new_chunk: Vector2i)

@export var movement_speed = 1000
@export var zoom_levels: Array[Vector2] = [
	Vector2(0.001, 0.001),
	Vector2(0.01, 0.01),
	Vector2(0.1, 0.1),
	Vector2(0.25, 0.25),
	Vector2(0.5, 0.5),
	Vector2(1, 1),
	Vector2(2, 2),
	Vector2(5, 5),
	Vector2(10, 10),
]

@onready var camera_2d: Camera2D = $Camera2D

var zoom_level: int = 3
var current_chunk: Vector2i

func _ready() -> void:
	current_chunk = Vector2i(0, 0)
	moved_chunk.emit(current_chunk)

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("zoom in"):
		zoom_level += 1
	if Input.is_action_just_pressed("zoom out"):
		zoom_level -= 1
	zoom_level = clampi(zoom_level, 0, zoom_levels.size() - 1)
	camera_2d.zoom = zoom_levels[zoom_level]
	
	var input_dir: Vector2 = Input.get_vector("left", "right", "forward", "back")
	velocity = input_dir * movement_speed / camera_2d.zoom.x
	move_and_slide()
	update_chunk()
	if Input.is_action_just_pressed("click"):
		print(str(MathUtils.get_position_tile_hex(get_global_mouse_position()), MathUtils.get_chunk_of_position(get_global_mouse_position())))

func update_chunk() -> void:
	var old_chunk: Vector2i = current_chunk
	current_chunk = MathUtils.get_chunk_of_tile(MathUtils.get_position_tile_hex(position))
	if old_chunk != current_chunk:
		moved_chunk.emit(current_chunk)
