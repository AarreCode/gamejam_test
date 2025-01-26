extends Control


func _ready() -> void:
	$music.stream = Globals.audio_stream
	$music.play(Globals.music_spot)


func _on_return_pressed():
	Globals.music_spot = $music.get_playback_position()
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")


func _on_volume_slider_value_changed(_value: float) -> void:
	Globals.sound_volume = _value


func _on_sound_on_off_pressed() -> void:
	Globals.sound_on
