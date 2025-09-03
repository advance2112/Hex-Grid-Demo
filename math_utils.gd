extends Node

func get_hex_tile_position(q: int, r: int) -> Vector2:
	return q * Constants.Q_TILE_SPACING + r * Constants.R_TILE_SPACING
