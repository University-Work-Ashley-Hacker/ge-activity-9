class_name PooledObject3D
extends Node3D

@warning_ignore("unused_signal")
signal retrieved_from_pool
@warning_ignore("unused_signal")
signal returned_to_pool

@export var timer: Timer
var pool: ObjectPool3D

func _ready() -> void:
	timer.timeout.connect(_on_timout)
	
	self.linear_velocity = GameManager.get_rand_vel()

func _on_timout() -> void:
	pool.return_to_pool(self)
