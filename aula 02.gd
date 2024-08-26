extends Node2D

@onready var player = $player
@onready var control = $CanvasLayer/Control


func _ready():
	player.morreu.connect(_resectGame)
	control.tempo_acabou.connect(_resectGame)
	
func _resectGame():
	get_tree().reload_current_scene()
	


func _on_quit_pressed():
	pass # Replace with function body.
