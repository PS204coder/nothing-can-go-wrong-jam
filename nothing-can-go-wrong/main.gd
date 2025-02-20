extends Node2D

var Antblock = preload("res://antblock.tscn")







var x = 0
var y = 0
var centerblock = [-225 , -175 , -125 , -75 , -25 , 25 , 75 , 125 , 175 , 225]
var event_position_x = 0
var event_position_y = 0
var idx_id_update = false
var idx = y * 10 + x
func _ready():
	var grp = ButtonGroup.new()
	$Inventoryblock/InventoryBg/Eraser.button_group = grp
	$Inventoryblock/InventoryBg/Ant_Block.button_group = grp
@warning_ignore("unused_parameter")
func _process(delta):
	pass
func _input(event):
	if Input.is_action_just_pressed("left mouse") and event.position.x >= 100 and event.position.x < 600 and event.position.y >= 100 and event.position.y < 600:
		x = int((event.position.x - Global.topleft) / Global.mousesize)
		y = int((event.position.y - Global.topleft) / Global.mousesize)
		var antblock = Antblock.instantiate()
		idx = y * 10 + x
		print(Global.blockchosenid, " ", Global.ant_block_count, " ", Global.board[idx]," ", idx, " ", Global.deleted_blocks_idx) 
		if Global.blockchosenid == 2 and Global.ant_block_count < Global.ant_block_max and Global.board[idx] == 01 and Global.what_button_is_pressed == 2:
			Global.ant_block_count += 1
			antblock.position.x = centerblock[x]
			antblock.position.y = centerblock[y]
			add_child(antblock)
			Global.board[idx] = 02
			
			
			
			
			
