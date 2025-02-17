extends Area2D

var x = false
# Called when the node enters the scene tree for the first time.
func _ready():
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _input(event):
	if Input.is_action_just_pressed("mouse") and x == true:
		print(1)
		

func _on_mouse_entered():
	x = true


func _on_mouse_exited():
	x = false
