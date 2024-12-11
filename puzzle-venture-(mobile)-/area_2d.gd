extends Area2D

var speed = 200  # Movement speed
var velocity = Vector2()

# Set up for input controls (WASD or Arrow Keys)
func _ready():
	set_process_input(true)

func _process(delta):
	velocity = Vector2()  # Reset velocity each frame

	if Input.is_action_pressed("ui_up"):
		velocity.y = -1
	elif Input.is_action_pressed("ui_down"):
		velocity.y = 1
	
	if Input.is_action_pressed("ui_left"):
		velocity.x = -1
	elif Input.is_action_pressed("ui_right"):
		velocity.x = 1

	# Normalize the velocity for consistent movement speed in all directions
	velocity = velocity.normalized() * speed

	position += velocity * delta
