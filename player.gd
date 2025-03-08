extends Node3D

var viewport: Window
var camera: Camera3D

var MOVE_AMOUNT = 3
var ROTATE_AMOUNT = 0.5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	viewport = get_viewport()
	camera = $"./Camera3D"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(delta)
	if Input.is_action_pressed("up"):
		position.z += (MOVE_AMOUNT * delta)
	if Input.is_action_pressed("down"):
		position.z -= (MOVE_AMOUNT * delta)
	if Input.is_action_pressed("left"):
		rotation.y += (ROTATE_AMOUNT * delta)
	if Input.is_action_pressed("right"):
		rotation.y -= (ROTATE_AMOUNT * delta)
