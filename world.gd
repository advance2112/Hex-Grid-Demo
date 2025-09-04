extends Node2D

var loaded_chunk_indecies: Array[Vector2i]

func _on_character_moved_chunk(new_chunk: Vector2i) -> void:
	load_chunks(new_chunk)

func load_chunks(center_chunk: Vector2i) -> void:
	var chunk_indecies: Array[Vector2i] = MathUtils.get_all_adjacent_chunks(center_chunk)
	print(str(chunk_indecies))
	for chunk_index: Vector2i in chunk_indecies:
		if not loaded_chunk_indecies.has(chunk_index):
			var new_chunk = Prefabs.MULTIMESH_HEX_GRID.instantiate()
			new_chunk.position = MathUtils.get_chunk_position(chunk_index)
			add_child(new_chunk)
			loaded_chunk_indecies.append(chunk_index)
			print("Loaded chunk at %s" % chunk_index)
