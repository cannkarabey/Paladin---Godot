extends Node

@export var death_sound: AudioStream

func play_death_sound():
	var player = AudioStreamPlayer.new()
	player.stream = death_sound
	add_child(player)
	player.play()
	await player.finished
	player.queue_free()
