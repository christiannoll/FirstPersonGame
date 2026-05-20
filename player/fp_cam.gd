extends Node3D

var sensitivity = 0.2

func _input(event: InputEvent) -> void:
	if event == InputEventMouseMotion:
		get_parent().rotate(deg_to_rad(-event.relative.x * sensitivity))
		rotate_x(deg_to_rad(-event.relative.y * sensitivity))
		rotation.x = clamp(rotation.x, deg_to_rad(-90), deg_to_rad(90)) 
