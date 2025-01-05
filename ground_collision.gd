extends StaticBody3D

var flower: MeshInstance3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	flower = $Flower
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	


func _input_event(camera: Camera3D, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int):
	if event is InputEventMouseButton and event.pressed and event.button_index == 1:
		# create new flowers at the position where clicked
		var new_flower = flower.clone()
		new_flower.position = event_position
		new_flower.visible = true
		get_parent_node_3d().add_child(new_flower)
		print(new_flower)
