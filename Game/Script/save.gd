extends Node

var node_save_file = preload("res://Scene/save_file.tscn")

func _ready():
	var node_save_files = get_node("SaveFiles")
	
	for i in range(3):
		var node_save_file_instance = node_save_file.instantiate()
		node_save_file_instance.position = Vector2(160, 160 + 160 * i)
		node_save_file_instance.get_node("FileName").text = "File " + str(i + 1)
		if DataSave.save[i]["new"] == true:
			node_save_file_instance.get_node("New").text = "New"
		else:
			node_save_file_instance.get_node("New").text = "Saved"
			
		node_save_file_instance.get_node("Percentage").text = str(DataSave.save[i]["percentage"]) + "%"
		
		node_save_files.add_child(node_save_file_instance)

func _process(delta):
	if Input.is_action_just_released("ui_mouse_left"):
		var mouse = get_viewport().get_mouse_position()
		
		if FunctionPhysics.point_inside_rect_array(mouse[0], mouse[1], UI.save["button_back"]):
			get_tree().change_scene_to_file("res://Scene/title.tscn")
		
