extends TextureButton

var x = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
		
func _on_pressed():
	if x == false and Global.what_button_is_pressed == 0:
		Global.what_button_is_pressed = 2
		x = true
		Global.blockchosenid = 2
	elif x == true:
		Global.blockchosenid = 0
		Global.what_button_is_pressed = 0
		x = false


func _on_eraser_pressed():
	if Global.what_button_is_pressed == 2:
		Global.what_button_is_pressed = 1
	if Global.what_button_is_pressed == 1 and x == true:
		button_pressed = true
