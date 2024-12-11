extends CharacterBody2D

var speed = 700  # Movement speed
var characterbody2D = Vector2()  # Vector to store movement direction

# Set up for input controls (WASD or Arrow Keys)
func _ready():
	set_process_input(true)

func _process(delta):
	velocity = Vector2(0,30)  # Reset velocity each frame

	if Input.is_action_pressed("ui_up"):
		velocity.y = -1  # Move up
	elif Input.is_action_pressed("ui_down"):
		velocity.y = 1  # Move down
	if Input.is_action_pressed("ui_left"):
		velocity.x = -1  # Move left
	elif Input.is_action_pressed("ui_right"):
		velocity.x = 1  # Move right

	# Normalize the velocity for consistent movement speed in all directions
	velocity = velocity.normalized() * speed

	# Update the player's position
	position += velocity * delta
