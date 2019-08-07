extends Node2D

var player = preload("res://player.tscn")

func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("mouse_left"):
		add_child(player.instance())
		get_child(get_child_count()-1).position = get_local_mouse_position()
