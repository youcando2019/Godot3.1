extends TileMap

var grid_size = Vector2(15, 15)
var grid = []
var TOP = Vector2(0, -1)
var DOWN = Vector2(0, 1)
var LEFT = Vector2(-1, 0)
var RIGHT = Vector2(1, 0)

func _ready():
	for y in range(grid_size.y):
		grid.append([])
		for x in range(grid_size.x):
			grid[y].append(null)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
