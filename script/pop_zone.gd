extends Area2D

class_name pop
#@onready var timer: Timer = $Timer
var box = ""

@onready var color_label: Label =$"../color"

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Green"):
		color_label.text = " Green "
	if area.is_in_group("Purple"):
		color_label.text = "Purple"
