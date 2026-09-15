extends Area3D

var rotation_speed := 2.0

func _process(delta: float) -> void:
	rotate_y(rotation_speed * delta)



func _on_body_entered(body: Node3D) -> void:
	if body is CharacterBody3D:
		queue_free()
