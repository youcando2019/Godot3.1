extends Sprite

var count = 0
var toggle = false

func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func move(f_count):
	if count + f_count < get_parent().Max:
		for i in range(f_count):
			position += get_parent().movement[count+i]
		count += f_count

func _input(event):
	if event.is_action_pressed("click"):
		move(5)
		toggle = true
	if toggle:
		if event.is_action_pressed("click"):
			toggle = false
