extends Node3D

var viewport: Window
var camera: Camera3D
var playeranim: AnimatedSprite3D

var MOVE_AMOUNT = 3
var ROTATE_AMOUNT = 0.5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	viewport = get_viewport()
	camera = $"./Camera3D"
	playeranim = $playeranim
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var is_running = false
	if Input.is_action_pressed("up"):
		is_running = true
		position.z += (MOVE_AMOUNT * delta) * cos(rotation.y)
		position.x += (MOVE_AMOUNT * delta) * sin(rotation.y)
	if Input.is_action_pressed("down"):
		is_running = true
		position.z -= (MOVE_AMOUNT * delta) * cos(rotation.y)
		position.x -= (MOVE_AMOUNT * delta) * sin(rotation.y)
	if Input.is_action_pressed("left"):
		is_running = true
		rotation.y += (ROTATE_AMOUNT * delta)
	if Input.is_action_pressed("right"):
		is_running = true
		rotation.y -= (ROTATE_AMOUNT * delta)

	if is_running:
		playeranim.play("running")
	else:
		playeranim.stop()
