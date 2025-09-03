extends Node2D

@export var grid_size: Vector2i = Vector2i(10,10)

var tiles: Array[Array] = []

func _ready() -> void:
	tiles = []
	for i in range(grid_size.x):
		tiles.insert(i, [])
		for j in range(grid_size.y):
			var tile: Tile = Prefabs.TILE.instantiate()
			tile.color = random_color()
			tiles[i].append(tile)
			tile.position = MathUtils.get_hex_tile_position(j, i)
			add_child(tile)
			print(str(i, ",", j, ":", tile.position))
	

func random_color() -> Color:
	return Color(randf(), randf(), randf())
