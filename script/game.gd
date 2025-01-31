extends Node2D

var stack_list = []

var Pop = pop.new()

var e = preload("res://scenes/element.tscn")
var e2 = preload("res://scenes/element_2.tscn")

var num = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#var Game_info = preload("res://script/game.gd")
	add(Vector2(0,0))
	
func _physics_process(delta: float) -> void:
	#Pop._on_area_entered()
	if Input.is_action_just_pressed("add"): 
		#add(Vector2(0,num))
		num -= 15
		add(Vector2(0,num))
		#num -= 15
		#add(Vector2(0,num))
		#num -= 15
		#add(Vector2(0,num))
		#num -= 15
		#add(Vector2(0,num))
		#num -= 15
		#add(Vector2(0,num))

	if len(stack_list) != 0 && Input.is_action_just_pressed("remove"):
		#remove()
		num +=15
		remove()
		#num +=15
		#remove()
		#num +=15
		#remove()
		#num +=15
		#remove()
		#num +=15
		#remove()
		#Pop._on_area_entered(e)
	if Input.is_action_just_pressed("Find"):
		print(len(stack_list))
func add(pos):
	#var stack = e.instantiate()
	#stack.position = pos
	#add_child(stack)
	#stack_list.append(stack)  # Store the reference in a list.
	var items = [e, e2]  # Replace with your actual array of items (e.g., preloaded scenes or references)
	var random_item = items[randi() % items.size()]  # Pick a random item
	var instance = random_item.instantiate()  # Instantiate the random item
	instance.position = pos
	add_child(instance)
	stack_list.append(instance)
	
func remove():
	if stack_list.size() > 0:  # Check if there are items to remove.
		var stack_to_remove = stack_list.pop_back()  # Remove the last item from the list.
		remove_child(stack_to_remove)  # Detach it from the scene tree.
		stack_to_remove.queue_free()  # Free the memory.
