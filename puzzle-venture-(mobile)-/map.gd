extends Node2D




func _on_level_1_pressed() -> void:
	get_tree().change_scene_to_file("res://story_(text).tscn")




func _on_back_to_main_pressed() -> void:
	get_tree().change_scene_to_file("res://main menu .tscn")
