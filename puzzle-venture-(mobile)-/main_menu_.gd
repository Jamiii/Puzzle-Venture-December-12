extends Control





func _on_play_pressed() -> void:
	get_tree().change_scene_to_file('res://animation_here_(intro).tscn')



func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://settings.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
