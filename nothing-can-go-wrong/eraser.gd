extends TextureButton
@onready var ant_block = $"../Ant Block"
var x = false 
var z = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(Global.what_button_is_pressed)

func _on_pressed():
	if Global.what_button_is_pressed != 1:
		Global.what_button_is_pressed = 1
		Global.blockchosenid = 1
	elif Global.what_button_is_pressed == 1: 
		pass


func _on_ant_block_pressed():
	pass
