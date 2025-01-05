extends Node3D

var viewport: Window
var camera: Camera3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	viewport = get_viewport()
	camera = $"./Camera3D"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
	
func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == 1 && event.is_pressed():
			pass
			#print(viewport.get_mouse_position())
			#print(camera.project_local_ray_normal(viewport.get_mouse_position()))
