extends Node2D


func _unhandled_input(event: InputEvent) -> void:
	if (event is InputEventScreenTouch or event is InputEventMouseButton) and event.pressed:
		get_tree().change_scene_to_file("res://scenes/Main.tscn")
