extends Area2D

class_name pop
#@onready var timer: Timer = $Timer
var box = ""


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Green"):
		print("get fucked")
		#queue_free()
	#if area.is_in_group("Green") and Input.is_action_just_pressed("remove"):
	if Input.is_action_just_pressed("remove"):
		print("get double fucked")
