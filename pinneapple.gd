extends Area2D

func _on_body_entered(body):
	if  body.name =="player": # se o corpo que entrou tiver o nome player
		GlobalScript.pontos += 5
		$pineapple.play("new_animation")#roda animacao de coletado
		await $pineapple.animation_finished #espera animacao terminar
		queue_free()
		
		
		
		
		
		
