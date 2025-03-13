extends Sprite3D

var flowers: Array

var is_rising = false
var RISE_AMOUNT = 2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (is_rising):
		do_rise(delta)

func plant_flower(flower_files: Array):
	position.y = -2
	pick_new_flower_image(flower_files)
	is_rising = true
	
func do_rise(delta):
	if (position.y >= 0.5):
		is_rising = false
		return
	position.y += (delta * RISE_AMOUNT)
	
func pick_new_flower_image(flower_files: Array):
	var file = flower_files.pick_random()
	texture = load("res://flowerimages/" + file)
