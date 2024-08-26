extends AnimatedSprite2D
var pontos = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _add_points(points):
	print("Pontuação:",pontos)
	queue_free()

# Called when the node enters the scene tree for the first time.place with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
