extends Area2D
@onready var player = $"../../player"

func _on_body_entered(body):
	if  body.name =="player": # se o corpo que entrou tiver o nome player 
		$melancia_do_mal.play("mal_coletado ")
		player._levouDano(1)			
		
