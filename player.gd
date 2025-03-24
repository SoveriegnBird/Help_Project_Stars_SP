extends CharacterBody2D

var speed = 175
var volecity = Vector2()

func _physics_process(delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("down"):
		velocity.y += speed
	if Input.is_action_pressed("up"):
		velocity.y -= speed
	if Input.is_action_pressed("left"):
		velocity.x -= speed
	if Input.is_action_pressed("right"):
		velocity.x += speed
	if Input.is_action_pressed("escape"):
		get_tree().quit()
	
	move_and_slide()
