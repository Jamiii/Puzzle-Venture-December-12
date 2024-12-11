extends Node2D


func _on_skip_pressed() -> void:
	get_tree().change_scene_to_file('res://level_1_(general_questions).tscn')
