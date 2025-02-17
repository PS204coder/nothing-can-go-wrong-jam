extends Node2D

var Antblock = preload("res://antblock.tscn")
var x = 0
var y = 0
var centerblock = [-225 , -175 , -125 , -75 , -25 , 25 , 75 , 125 , 175 , 225]
#block count uncoding round((round(round(1001951001950101%100000000))%10000)/100)
#block type uncoding round((round(round(1001951001950101%100000000))%10000)%100)
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta):
	pass
func _input(event):
	if Input.is_action_just_pressed("mouse") and event.position.x >= 100 and event.position.x < 1050 and event.position.y >= 100 and event.position.y < 1050:
		
		x = int((event.position.x - Global.topleft) / Global.mousesize)
		y = int((event.position.y - Global.topleft) / Global.mousesize)
		var idx = y * 10 + x
		var antblock = Antblock.instantiate()
		antblock.position.x = centerblock[x]
		antblock.position.y = centerblock[y]
		add_child(antblock)
		print(Global.board[idx])
		Global.board[idx] = 02
		print(Global.board[idx])
		
