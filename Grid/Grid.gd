extends TileMap

var road = 64

var grid_size = Vector2(15, 15)
var grid = []
var TOP = Vector2(0, -1)
var DOWN = Vector2(0, 1)
var LEFT = Vector2(-1, 0)
var RIGHT = Vector2(1, 0)

func _ready():
	TOP *= cell_size
	DOWN *= cell_size
	LEFT *= cell_size
	RIGHT *= cell_size
	position += RIGHT
	
	for y in range(grid_size.y):
		grid.append([])
		for x in range(grid_size.x):
			grid[y].append(null)
	grid[8][1] = 1
	grid[8][2] = 1
	grid[8][3] = 1
	grid[8][4] = 1
	grid[8][5] = 1
	grid[7][5] = 1
	grid[6][5] = 1
	grid[5][5] = 1
	grid[4][5] = 1
	grid[3][5] = 1
	grid[3][6] = 1
	grid[3][7] = 1
	grid[3][8] = 1
	grid[3][9] = 1
	grid[4][9] = 1
	grid[5][9] = 1
	grid[6][9] = 1
	grid[7][9] = 1
	grid[8][9] = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
