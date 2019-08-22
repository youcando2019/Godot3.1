extends Node2D

var player = preload("res://player.tscn")

func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#if Input.is_action_just_pressed("mouse_left"):
		pass
func _input(event):
	if event is InputEventScreenTouch or event is InputEventMouseButton:
		var event_is_press = true;
		
		if event is InputEventScreenTouch:
			event_is_press = event.pressed;
		elif event is InputEventMouseButton:
			event_is_press = event.pressed;
		
		if (event_is_press == true):
			for i in range(100):
				add_child(player.instance())
				get_child(get_child_count()-1).position = get_local_mouse_position()
