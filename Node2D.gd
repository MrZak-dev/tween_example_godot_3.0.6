extends Node2D

onready var tween_node = get_node("Tween")

func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	var click_position = get_global_mouse_position()
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		tween_node.interpolate_property(self,"position",get_position(),click_position,1.0,Tween.TRANS_BACK,Tween.EASE_OUT)
		tween_node.start()
	pass
