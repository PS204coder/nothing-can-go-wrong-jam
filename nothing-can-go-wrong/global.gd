extends Node

const topleft = 100.0
const mousesize = 50.0
var board = [01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01]
var blockchosenid = 0
var ant_block_max = 10
var deleted_blocks_idx = []
var check_if_block_deleted = false
var ant_block_count = 0
var what_button_is_pressed = 0
var inventory_visibility = false
var where_ant_go_block_count = 0
var where_ants_go_selected_blocks = []
var simulation_start = false
var ant_count = 0




func _ready():
	pass
