extends Node2D


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
		#Pop._on_area_entered(e.CollisionShape2D)
		#Pop._on_area_entered(e)
func add(pos):
	var stack = e.instantiate()
	stack.position = pos
	add_child(stack)
