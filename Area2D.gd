extends Area2D

func _on_body_entered(body):
	if  body.name =="player": # se o corpo que entrou tiver o nome player
		GlobalScript.pontos += 1
		$AnimatedSprite2D.play("coletado")#roda animacao de coletado
		await $AnimatedSprite2D.animation_finished #espera animacao terminar
		queue_free()
