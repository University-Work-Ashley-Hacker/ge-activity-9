class_name Object_2
extends Node3D

@export var timer: Timer

func _ready() -> void:
	timer.timeout.connect(_on_timout)
	
	self.linear_velocity = GameManager.get_rand_vel()

func _on_timout() -> void:
	call_deferred("queue_free")
