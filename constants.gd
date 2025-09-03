extends Node

const ROOT3 = 1.732050807568877

const TILE_SIZE: float = 512

var TILE_SPACING: Vector2:
	set(value): push_error("can't set that bud")
	get(): return Vector2(TILE_SIZE * .75, TILE_SIZE * ROOT3)
var Q_TILE_SPACING: Vector2:
	set(value): push_error("can't set that bud")
	get(): return Vector2(TILE_SPACING.x * 2, TILE_SPACING.y * 0.5)
var R_TILE_SPACING: Vector2:
	set(value): push_error("can't set that bud")
	get(): return Vector2(0, TILE_SPACING.y)
