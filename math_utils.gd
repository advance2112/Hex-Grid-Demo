extends Node

func get_chunk_position(chunk: Vector2i) -> Vector2:
	return get_hex_tile_position(chunk * Constants.CHUNK_SIZE_HEXES)

func get_hex_tile_position(hex: Vector2i) -> Vector2:
	return Vector2(hex.x * 3./2 * Constants.TILE_SIZE, Constants.ROOT3 * ((hex.x * 1./2) + hex.y) * Constants.TILE_SIZE)

func get_fractional_position_tile_hex(pos: Vector2) -> Vector2:
	return Vector2((pos.x * 2./3) / Constants.TILE_SIZE, ((-1./3 * pos.x) + (Constants.ROOT3/3 * pos.y)) / Constants.TILE_SIZE)

func get_position_tile_hex(pos: Vector2) -> Vector2i:
	return round_axial(get_fractional_position_tile_hex(pos))

func get_center_of_position_tile_hex(pos: Vector2) -> Vector2:
	return get_hex_tile_position(get_position_tile_hex(pos))

func get_chunk_of_tile(hex: Vector2i) -> Vector2i:
	return Vector2i(floori(float(hex.x) / float(Constants.CHUNK_SIZE_HEXES.x)), floori(float(hex.y) / float(Constants.CHUNK_SIZE_HEXES.y)))

func get_chunk_of_position(pos: Vector2) -> Vector2i:
	return get_chunk_of_tile(get_position_tile_hex(pos))

func round_axial(frac: Vector2) -> Vector2i:
	var q = roundf(frac.x)
	var r = roundf(frac.y)
	var s = roundf(- frac.x - frac.y)
	
	var q_diff = abs(q - frac.x)
	var r_diff = abs(r - frac.y)
	var s_diff = abs(s - (- frac.x - frac.y))

	if q_diff > r_diff and q_diff > s_diff:
		q = -r-s
	elif r_diff > s_diff:
		r = -q-s
	else:
		s = -q-r

	return Vector2i(q, r)

func get_all_adjacent_chunks(center_chunk: Vector2i) -> Array[Vector2i]:
	var adjacents: Array[Vector2i] = []
	for i in range(-2, 3):
		for j in range(-2, 3):
			adjacents.append(center_chunk + Vector2i(i, j))
	return adjacents
