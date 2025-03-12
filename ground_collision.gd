extends StaticBody3D

var flower: Sprite3D
var flower_files: Array

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	flower = $Flower
	flower_files = get_flower_files()
	
	
	
func get_flower_files():
	var dir = DirAccess.open("res://flowerimages")
	var flower_files: Array = []
	if dir:
		dir.list_dir_begin()
		var file_name = dir.get_next()
		while file_name != "":
			if file_name.ends_with(".png"):
				flower_files.append(file_name)
			file_name = dir.get_next()
			
	else:
		print("An error occurred when trying to access the path.")
	return flower_files
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	


func _input_event(camera: Camera3D, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int):
	if event is InputEventMouseButton and event.pressed and event.button_index == 1:
		# create new flowers at the position where clicked
		var new_flower = flower.duplicate()
		new_flower.position = event_position
		new_flower.plant_flower(flower_files)
		new_flower.visible = true
		get_parent_node_3d().add_child(new_flower)
