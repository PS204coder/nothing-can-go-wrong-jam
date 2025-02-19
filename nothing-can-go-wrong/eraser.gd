extends TextureButton

var x = false 
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.what_button_is_pressed != 0 and Global.what_button_is_pressed != 1:
		disabled = true
	else:
		disabled = false


func _on_pressed():
	if x == false and Global.what_button_is_pressed == 0:
		Global.what_button_is_pressed = 1
		x = true
		Global.blockchosenid = 1
	elif x == true:
		Global.blockchosenid = 0
		Global.what_button_is_pressed = 0
		x = false


func _on_ant_block_pressed():
	pass
