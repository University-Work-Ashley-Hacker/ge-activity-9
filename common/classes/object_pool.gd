class_name ObjectPool3D
extends Node

@export_category("Dependencies")
@export var object: PackedScene
@export var initial_size: int = 10
var objects: Array[PooledObject3D]

@export var debug: bool = false


func _ready() -> void:
	for i in initial_size:
		var obj := _create_object()
		objects.append(obj)

func _print(text: String) -> void:
	if debug: print_rich("[b][color=blue]ObjectPool: [/color][/b]" + text)

func retrieve_from_pool() -> PooledObject3D:
	if objects.size() <= 0:
		var new_obj := _create_object()
		new_obj.set_process(true)
		_print("Created new")
		return new_obj
	var obj = objects.pop_back()
	obj.set_process(true)
	_print("Retrieved from pool")
	return obj

func deferred_signal_call(obj: PooledObject3D) -> void:
	obj.retrieved_from_pool.emit()

func return_to_pool(obj: PooledObject3D) -> void:
	obj.set_process(false)
	obj.reparent(self)
	self.remove_child(obj)
	objects.append(obj)
	obj.returned_to_pool.emit()

func _create_object() -> PooledObject3D:
	var instance := object.instantiate() as PooledObject3D
	instance.pool = self
	return instance
