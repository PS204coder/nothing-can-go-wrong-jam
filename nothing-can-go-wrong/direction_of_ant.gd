extends Area2D
var x = 0
var mouse = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called eery frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _input(event):
	if Global.blockchosenid == 10 and mouse == true and Input.is_action_just_pressed("right mouse"):
		if x == 0:
			set_rotation_degrees(90)
			x = 1
		elif x == 1:
			set_rotation_degrees(180)
			x = 2
		elif x == 2:
			set_rotation_degrees(270)
			x = 3
		elif x == 3:
			set_rotation_degrees(360)
			x = 0

func _on_mouse_entered():
	mouse = true


func _on_mouse_exited():
	mouse = false
