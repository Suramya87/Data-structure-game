extends CharacterBody2D

var height = 1
@onready var height_label: Label =$Camera2D/Label
#const JUMP_VELOCITY = -15
const JUMP_VELOCITY = -15  # Distance moved in pixels
const MOVE_STEPS = 15  # Number of steps for smooth movement
const WAIT_TIME = 0.2  # Time between steps

var is_moving = false  # To prevent overlapping inputs

		
func _physics_process(delta: float) -> void:
	
	height_label.text = str(height) 
	# Add the gravity.
	#if CollisionObject2D.ELEMENT:
		#delet
	# Handle jump.
	#if height > 0 && Input.is_action_just_pressed("add"):
	if Input.is_action_just_pressed("add"):
		position.y += JUMP_VELOCITY
		height += 1
		#position.y += JUMP_VELOCITY
		#height += 1
		#position.y += JUMP_VELOCITY
		#height += 1
		#position.y += JUMP_VELOCITY
		#height += 1
		#position.y += JUMP_VELOCITY
		#height += 1
		#position.y += JUMP_VELOCITY
	#if height == 0 && Input.is_action_just_pressed("add"):
		#position.y += JUMP_VELOCITY
		#height += 1
	
	if height >= 1 && Input.is_action_just_pressed("remove"):
		#position.y -= JUMP_VELOCITY
		move_vertically(-JUMP_VELOCITY)
		height -= 1
		#move_vertically(-JUMP_VELOCITY)
		#height -= 1
		#move_vertically(-JUMP_VELOCITY)
		#height -= 1
		#move_vertically(-JUMP_VELOCITY)
		#height -= 1
		#move_vertically(-JUMP_VELOCITY)
		#height -= 1
func move_vertically(distance: float) -> void:
	if is_moving:
		return
	is_moving = true
	var step_distance = distance / MOVE_STEPS
	var steps = 0
	while steps < MOVE_STEPS:
		position.y += step_distance
		await(get_tree().create_timer(WAIT_TIME))
		steps += 1
	is_moving = false
