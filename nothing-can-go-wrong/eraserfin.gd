extends TextureButton

var x = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.inventory_visibility == false:
		disabled = true
		visible = false
		$"../Eraserbg".visible = false
		x = false
	if Global.inventory_visibility == true:
		disabled = false
		visible = true
		$"../Eraserbg".visible = true

func _on_pressed():
	if x == false:
		Global.what_button_is_pressed = 1
		Global.blockchosenid = 10
		x = true
	elif x == true: 
		Global.what_button_is_pressed = 0
		Global.blockchosenid = 10
		x = false
