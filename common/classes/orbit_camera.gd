class_name OrbitCamera
extends Node3D

@export_category("External Dependencies")

@export_group("Node Dependencies")

@export_group("Component Dependencies")

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		_move_camera(event.velocity)


func _move_camera(vel: Vector2) -> void:
	pass
