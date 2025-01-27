extends CharacterBody2D

var height = 1

const JUMP_VELOCITY = -15

		
func _physics_process(delta: float) -> void:
	# Add the gravity.
	#if CollisionObject2D.ELEMENT:
		#delet
	# Handle jump.
	#if height > 0 && Input.is_action_just_pressed("add"):
	if Input.is_action_just_pressed("add"):
		position.y += JUMP_VELOCITY
		height += 1
		print(height)
		#position.y += JUMP_VELOCITY
	#if height == 0 && Input.is_action_just_pressed("add"):
		#position.y += JUMP_VELOCITY
		#height += 1
	
	if height >= 1 && Input.is_action_just_pressed("remove"):
		position.y -= JUMP_VELOCITY
		height -= 1
		print(height)
		#position.y -= JUMP_VELOCITY
#func postion():
	#return position
	move_and_slide()
