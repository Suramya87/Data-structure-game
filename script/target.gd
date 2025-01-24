extends CharacterBody2D


class_name target
	
#const ELEMENT = preload("res://scenes/element.tscn")

const JUMP_VELOCITY = -15
func _physics_process(delta: float) -> void:
	# Add the gravity.
	#if CollisionObject2D.ELEMENT:
		#delet
	# Handle jump.
	if Input.is_action_just_pressed("add"):
		position.y += JUMP_VELOCITY
		
	if Input.is_action_just_pressed("remove"):
		position.y -= JUMP_VELOCITY

#func postion():
	#return position
	move_and_slide()
