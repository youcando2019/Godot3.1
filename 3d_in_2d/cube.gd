extends Spatial

func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func f_rotate():
	randomize()
	$mesh.rotate_x(PI/2)
	$mesh.rotate_y(PI/2)
