extends TileMap

var UP
var DOWN
var LEFT
var RIGHT

func _ready():
	UP = Vector2(0, -cell_size.y)
	DOWN = Vector2(0, cell_size.y)
	LEFT = Vector2(-cell_size.x, 0)
	RIGHT = Vector2(cell_size.x, 0)
	
	var player1_movement = [Vector2(27.0, 216.0), RIGHT, RIGHT, RIGHT, RIGHT, 
							UP, UP, UP, UP, UP, 
							RIGHT, RIGHT, RIGHT, RIGHT, 
							DOWN, DOWN, DOWN, DOWN, DOWN, 
							RIGHT, RIGHT, RIGHT, RIGHT, RIGHT, 
							DOWN, DOWN, DOWN, DOWN, 
							LEFT, LEFT, LEFT, LEFT, LEFT, 
							DOWN, DOWN, DOWN, DOWN, DOWN, 
							LEFT, LEFT, LEFT, LEFT, 
							UP, UP, UP, UP, UP, 
							LEFT, LEFT, LEFT, LEFT, LEFT, 
							UP, UP, UP, UP, 
							RIGHT, 
							DOWN, DOWN, 
							RIGHT, RIGHT, RIGHT, RIGHT, RIGHT]
	$Player1.init(player1_movement)
	print($Player1.position)

func _process(delta):
	$Player1.move_test()
