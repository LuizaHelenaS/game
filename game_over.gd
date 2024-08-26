extends CanvasLayer
var game_over = false

func _ready():
		visible = false


func _on_sair_pressed():
		get_tree().over = false
		get_tree().change_scene_to_file("res://game_over.tscn")



	
	

func _on_restart_pressed():
		get_tree().change_scene_to_file("res://aula 01.tscn")
