extends Node

#use a predefined constant to avoid the expensive sqrt() function
const ROOT3 = 1.732050807568877

const TILE_SIZE: float = 512

var CHUNK_SIZE_HEXES: Vector2i:
	set(value): push_error("can't set that bud")
	get(): return Vector2i(64, 64)
