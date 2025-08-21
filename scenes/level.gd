extends Node2D

var meteor_scene: PackedScene = load("res://scenes/meteor.tscn")
var laser_scene: PackedScene = load("res://laser.tscn")

func _on_meteor_timer_timeout() -> void:
	
	var metor = meteor_scene.instantiate()

	$Meteors.add_child(metor)


func _on_player_laser(pos):
	var laser=laser_scene.instantiate()
	$lasers.add_child(laser)
	laser.position = pos
	
	
