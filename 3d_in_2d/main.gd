extends Node2D

func _ready():
	pass # Replace with function body.

func _process(delta):
	$"3d".texture = $Viewport.get_texture()
	$Navigation2D.get_simple_path($Piece.position, $Navigation2D/TileMap.get_world_2d())