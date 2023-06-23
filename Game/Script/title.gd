extends Node

func _ready():
	FunctionSave.save_init()
	FunctionSave.reset_data()

func _process(delta):
	if Input.is_action_just_released("ui_mouse_left"):
		var mouse = get_viewport().get_mouse_position()
		
		if FunctionPhysics.point_inside_rect_array(mouse[0], mouse[1], UI.title["button_start"]):
			get_tree().change_scene_to_file("res://Scene/save.tscn")
