extends Node

func save_init():
	var file = FileAccess.open("user://save.txt", FileAccess.READ)
	
	if !file:
		file = null
		file = FileAccess.open("user://save.txt", FileAccess.WRITE)
		file = null
	
	if file.get_as_text() == "":
		file = null
		file = FileAccess.open("user://save.txt", FileAccess.WRITE)
		file.store_line(JSON.stringify(EmptySave.data))
		
	file = null
	file = FileAccess.open("user://save.txt", FileAccess.READ)
	
	DataSave.save = JSON.parse_string(file.get_line())
	file = null

func reset_data():
	var file = FileAccess.open("user://save.txt", FileAccess.READ)
	
	if !file:
		file = null
		file = FileAccess.open("user://save.txt", FileAccess.WRITE)
		file = null
	
	file = FileAccess.open("user://save.txt", FileAccess.WRITE)
	file.store_line(JSON.stringify(EmptySave.data))
		
	file = null

func save_data():
	var file = FileAccess.open("user://save.txt", FileAccess.WRITE)
	file.store_line(JSON.parse_string(DataSave.save))
	file = null
