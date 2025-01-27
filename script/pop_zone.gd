extends Area2D

class_name pop
#@onready var timer: Timer = $Timer
var box = ""


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Green"):
		print("get fucked")
