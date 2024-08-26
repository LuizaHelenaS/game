extends CanvasLayer
var game_paused = false

func _ready():
	visible = false


func _on_sair_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://world.tscn")

func _on_reiniciar_pressed():
	get_tree().quit()
	visible = false
	

func _on_quit_pressed():
	get_tree().paused = false
	visible = false
	
	
func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		get_tree().paused = true
		visible = true
