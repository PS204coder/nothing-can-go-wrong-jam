extends Node2D

var x = 0
var y = 0
var tenthbox = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta):
	pass
func _input(event):
	if Input.is_action_just_pressed("mouse"):
		x = event.position.x
		y = event.position.y
		for i in range(0, len(Global.board)):
			if round(round(Global.board[i]/100000000)%1000) == 105 or round(round(round(Global.board[i]/100)%1000000)%1000):
				tenthbox = true
			if tenthbox == true:
				if x >= (round(Global.board[i]/10000000))/10000 and x <= (round(round(Global.board[i]/100000000)%1000))* 10 and y >= round(round(Global.board[i])%100000000)/100000 and y <= (round(round(round(Global.board[i]/100)%1000000)%1000))* 10:
					print(1)
					tenthbox = false
					break
			if tenthbox == false:
				if x >= (round(Global.board[i]/10000000))/10000 and x <= round(round(Global.board[i]/100000000)%1000) and y >= round(round(Global.board[i])%100000000)/100000 and y <= round(round(round(Global.board[i]/100)%1000000)%1000):
					print(1)
					break
