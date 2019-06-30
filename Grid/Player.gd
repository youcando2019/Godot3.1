extends Node2D

var movement = []
var Max = 64

func _ready():
	pass # Replace with function body.

func init(f_movement):
	movement = f_movement

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Piece1.move(5)
