class_name ObjectSpawenr
extends Marker3D

@export_category("Dependencies")
@export var object: PackedScene
@export var obj_pool: ObjectPool3D

@onready var parent: Node3D = $".."


func _physics_process(_delta: float) -> void:
	if Input.is_action_pressed("ui_accept"):
		var obj := obj_pool.retrieve_from_pool()
		obj.position = position
		parent.add_child(obj)
