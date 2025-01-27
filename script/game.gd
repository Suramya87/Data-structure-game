extends Node2D

var stack_list = []

var Pop = pop.new()

var e = preload("res://scenes/element.tscn")
var num = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add(Vector2(0,0))
	
func _physics_process(delta: float) -> void:
	#Pop._on_area_entered()
	if Input.is_action_just_pressed("add"):
		num -= 15
		#print("2")
		add(Vector2(0,num))
		#print("second")
	if Input.is_action_just_pressed("remove"):
		num +=15
		remove()
		#Pop._on_area_entered(e)
	if Input.is_action_just_pressed("Find"):
		print(len(stack_list))
func add(pos):
	var stack = e.instantiate()
	stack.position = pos
	add_child(stack)
	stack_list.append(stack)  # Store the reference in a list.
	
func remove():
	if stack_list.size() > 0:  # Check if there are items to remove.
		var stack_to_remove = stack_list.pop_back()  # Remove the last item from the list.
		remove_child(stack_to_remove)  # Detach it from the scene tree.
		stack_to_remove.queue_free()  # Free the memory.
