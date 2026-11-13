extends Node

func get_rand_vel() -> Vector3:
	var x = randf_range(-1, 1)
	var y = randf_range(-1, 1)
	var z = randf_range(-1, 1)
	return Vector3(x, y, z)
