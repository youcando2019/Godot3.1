extends Node2D

var movement = []
var Max = 64
var win = false

func _ready():
	pass # Replace with function body.

func init(f_movement):
	movement = f_movement
	$Piece1.init()
	$Piece2.init()
	$Piece3.init()
	$Piece4.init()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if win:
		print("WINNER")

func move_test():
	pass
