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
	if Global.blockchosenid == 10 and mouse == true and Input.is_action_just_pressed("right mouse") and Global.what_button_is_pressed == 0:
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
	elif  mouse == true and Input.is_action_just_pressed("left mouse") and Global.blockchosenid == 10 and Global.what_button_is_pressed == 1:
		var a = int((event.position.x - Global.topleft) / Global.mousesize)
		var b = int((event.position.y - Global.topleft) / Global.mousesize)
		var idx = b * 10 + a 
		Global.check_if_block_deleted = true
		Global.deleted_blocks_idx.append(idx)
		Global.board[idx] = 01
		for i in range(0, len(Global.deleted_blocks_idx)):
			Global.board[Global.deleted_blocks_idx[i]] = 01
			Global.deleted_blocks_idx.pop_at(i)
			break
		if Global.where_ant_go_block_count != 0:
			Global.where_ant_go_block_count -= 1
		queue_free()

func _on_mouse_entered():
	mouse = true


func _on_mouse_exited():
	mouse = false
