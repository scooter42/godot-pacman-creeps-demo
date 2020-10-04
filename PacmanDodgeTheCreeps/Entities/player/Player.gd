extends KinematicBody2D

export var velocity := Vector2()
export var speed := 100.0

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		velocity += Vector2(-1,0)
	if Input.is_action_pressed("ui_right"):
		velocity += Vector2(1,0)
	if Input.is_action_pressed("ui_up"):
		velocity += Vector2(0,-1)
	if Input.is_action_pressed("ui_down"):
		velocity += Vector2(0,1)
		
	move_and_collide(velocity * speed * delta)
	
	velocity = Vector2()
