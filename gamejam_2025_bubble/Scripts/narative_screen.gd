extends Control


func _ready() -> void:
	
	$music.stream = Globals.audio_stream
	$music.play(Globals.music_spot)


func _on_return_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/level.tscn")
