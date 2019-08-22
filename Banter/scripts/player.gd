extends Area2D

var speed = 1
var movement = Vector2(0, 0)

func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	movement.y += speed * delta
	position += movement


func _physics_process(delta):
	if Input.is_action_pressed("left"):
		movement.x -= speed * delta
	if Input.is_action_pressed("right"):
		movement.x += speed * delta
	if Input.is_action_pressed("up"):
		movement.y -= 2 * speed * delta

#func _input(event):
#	if(event.is_action_pressed("left"):
#		position.x -= speed * delta
