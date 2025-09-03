extends CharacterBody2D

@export var movement_speed = 1000
@export var zoom_levels: Array[Vector2] = [
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
