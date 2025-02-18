extends Area2D

var x = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _input(event):
	var a = int((event.position.x - Global.topleft) / Global.mousesize)
	var b = int((event.position.y - Global.topleft) / Global.mousesize)
	var idx = b * 10 + a
	if x == true and Input.is_action_just_pressed("right mouse") and Global.board[idx] == 02 and event.position.x >= 100 and event.position.x < 600 and event.position.y >= 100 and event.position.y < 600:
		Global.check_if_block_deleted = true
		queue_free()
	

func _on_mouse_entered():
	x = true

func _on_mouse_exited():
	x = false
