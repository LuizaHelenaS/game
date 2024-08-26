extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -350.0
signal morreu

var vida = 3 
# speed= velocidade
#jump_velocity= velocidade do pulo
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
# gravity= Gravidade

func _physics_process(delta): # faz o jogo funcionar
	# Add the gravity.
	if not is_on_floor():
		# se nao esta no chao
		velocity.y += gravity * delta
# velocidade.y+= gravidade* delta = caindo
	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor(): 
		# para pular uma tecla deve  ser presscionada se o personagem estiver no chao
		velocity.y = JUMP_VELOCITY # velocidade do pulo
# velocidade.y= pulo_ velocidade
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction !=0:   # se  direcao
		velocity.x = direction * SPEED # andar ou correr
		$"anime2d".play("run")
	else:
		# senao
		velocity.x = move_toward(velocity.x, 0, SPEED)  # parar de andar ou correr
		$"anime2d".play("idle")
	move_and_slide()  # mover e deslisar
			  
	
	
func _levouDano(dano):
	print("Sim,levou dano;-;") 
	vida-=dano
	if vida <= 0:
		emit_signal("morreu")
		
		

		
		
