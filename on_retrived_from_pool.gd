class_name OnRetrivedFromPool
extends Node

@export var pooled_object: PooledObject3D
@export var timer: Timer

func _enter_tree() -> void:
	timer.start()
