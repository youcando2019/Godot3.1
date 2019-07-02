extends Sprite

var count = 0

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func init():
	position = get_parent().movement[count]
	count += 1

func move(f_count):
	if count + f_count <= get_parent().Max:
		for i in range(f_count):
			position += get_parent().movement[count+i]
		count += f_count
		if count == get_parent().Max:
			get_parent().win = true

func _input(event):
	if event.is_action_pressed("click"):
		if event.position.x > position.x and event.position.y > position.y and event.position.x < position.x + get_parent().get_parent().cell_size.x and event.position.y < position.y + get_parent().get_parent().cell_size.y:
			move(1)
