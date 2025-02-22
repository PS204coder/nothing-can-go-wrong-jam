extends Node2D

const Antblock = preload("res://antblock.tscn")
const Where_ants_go = preload("res://direction_of_ant.tscn")
const Ant = preload("res://ant.tscn")
@onready var ant_delay = $Antdelay






var x = 0
var y = 0
var centerblock = [-225 , -175 , -125 , -75 , -25 , 25 , 75 , 125 , 175 , 225]
var event_position_x = 0
var event_position_y = 0
var idx_id_update = false
var idx = y * 10 + x
var timer_timeout = false



func _ready():
	$Antdelay.start()
	var grp = ButtonGroup.new()
	$Inventoryblock/InventoryBg/Eraser.button_group = grp
	$Inventoryblock/InventoryBg/Ant_Block.button_group = grp
@warning_ignore("unused_parameter")
func _process(delta):
	if Global.simulation_start == true and Global.ant_count < 20 and timer_timeout == true:
		x = -300
		y = -50
		var ant = Ant.instantiate()
		ant.position.x = x
		ant.position.y = y
		add_child(ant)
		Global.ant_count += 1
		timer_timeout = false
		$Antdelay.start()
func _input(event):
	if Input.is_action_just_pressed("left mouse") and event.position.x >= 100 and event.position.x < 600 and event.position.y >= 100 and event.position.y < 600:
		x = int((event.position.x - Global.topleft) / Global.mousesize)
		y = int((event.position.y - Global.topleft) / Global.mousesize)
		var antblock = Antblock.instantiate()
		idx = y * 10 + x
		if Global.blockchosenid == 2 and Global.ant_block_count < Global.ant_block_max and Global.board[idx] == 01 and Global.what_button_is_pressed == 2:
			Global.ant_block_count += 1
			antblock.position.x = centerblock[x]
			antblock.position.y = centerblock[y]
			add_child(antblock)
			Global.board[idx] = 02
			
	if Input.is_action_just_pressed("left mouse") and Global.where_ant_go_block_count < 15  and Global.board[idx] != 11 and Global.blockchosenid == 10 and Global.what_button_is_pressed == 0 and event.position.x >= 100 and event.position.x < 600 and event.position.y >= 100 and event.position.y < 600:
		x = int((event.position.x - Global.topleft) / Global.mousesize)
		y = int((event.position.y - Global.topleft) / Global.mousesize)
		var where_ants_go = Where_ants_go.instantiate()
		idx = y * 10 + x
		where_ants_go.position.x = centerblock[x]
		where_ants_go.position.y = centerblock[y]
		add_child(where_ants_go)
		Global.board[idx] += 10
		Global.where_ants_go_selected_blocks.append(0)
		print(Global.where_ants_go_selected_blocks)
		Global.where_ant_go_block_count += 1
			
			


func _on_ant_delay_timeout():
	timer_timeout = true
