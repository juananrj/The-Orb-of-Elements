extends CharacterBody2D


const velocidad = 200
@onready var player = $".."
@onready var animacion = $AnimatedSprite2D

func _physics_process(delta):
	if Input.is_action_pressed("left_move"):
		player.position.x -= velocidad * delta
		animacion.play("Walk_left")
	
	elif Input.is_action_pressed("right_move"):
		player.position.x += velocidad * delta
		animacion.play("Walk_right")
	
	elif Input.is_action_pressed("up_move"):
		player.position.y -= velocidad * delta
		animacion.play("Walk_up")
	
	elif Input.is_action_pressed("down_move"):
		player.position.y += velocidad * delta
		animacion.play("Walk_down")
	else:
		animacion.stop()


	move_and_slide()
