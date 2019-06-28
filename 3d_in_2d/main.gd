extends Node2D

var time_now = 0
var time_previous = 0

func _ready():
	pass # Replace with function body.

func _process(delta):
	time_now += delta
	
	$"3d".texture = $Viewport.get_texture()
	
	$Piece.position = Vector2($Grid.get_position_in_parent(), 0)
	
	if(time_now - time_previous >= 1):
		$Viewport/cube.f_rotate()
		time_previous = time_now