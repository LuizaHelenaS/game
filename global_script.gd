extends Node
var pontos = 1

# Called when the node enters the scene tree for the first time.

func _add_points(_points):
	print("Pontuação:",pontos)
	queue_free()
	

