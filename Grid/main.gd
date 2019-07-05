extends Node2D

func _ready():
	$Cube.texture = $Viewport.get_texture()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
