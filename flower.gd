extends MeshInstance3D

@export var the_mesh: Mesh

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.mesh = the_mesh
	print(position)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func clone() -> MeshInstance3D:
	var new_mesh = MeshInstance3D.new()
	new_mesh.mesh = the_mesh
	return new_mesh
