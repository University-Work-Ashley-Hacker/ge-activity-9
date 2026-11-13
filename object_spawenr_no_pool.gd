class_name ObjectSpawenrNoPool
extends Marker3D

@export var obj: PackedScene

@onready var parent : Node3D = $".."

func _physics_process(_delta: float) -> void:
	if Input.is_action_pressed("ui_accept"):
		for i in 10:
			var instance := obj.instantiate() as Node3D
			instance.position = position
			parent.add_child(instance)
		
