extends Control



func _on_creatirs_pressed() -> void:
	get_tree().change_scene_to_file("res://creators.tscn")




func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://main menu .tscn")
