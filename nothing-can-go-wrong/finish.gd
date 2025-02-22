extends TextureButton

var x = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_pressed():
	if x == false:
		Global.inventory_visibility = true
		Global.what_button_is_pressed = 0
		Global.blockchosenid = 10
		x = true
	elif x == true:
		Global.blockchosenid = 0
		Global.inventory_visibility = false
		x = false
