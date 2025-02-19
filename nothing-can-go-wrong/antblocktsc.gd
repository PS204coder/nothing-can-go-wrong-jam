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
	if x == true and Input.is_action_just_pressed("left mouse") and Global.blockchosenid == 1: 
		Global.check_if_block_deleted = true
		Global.deleted_blocks_idx.append(idx)
		Global.board[idx] = 01
		for i in range(0, len(Global.deleted_blocks_idx)):
			Global.board[Global.deleted_blocks_idx[i]] = 01
			Global.deleted_blocks_idx.pop_at(i)
			break
		if Global.ant_block_count != 0:
			Global.ant_block_count -= 1
		queue_free()
	

func _on_mouse_entered():
	x = true

func _on_mouse_exited():
	x = false
