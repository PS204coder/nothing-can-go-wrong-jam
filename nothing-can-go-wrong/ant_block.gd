extends TextureButton
@onready var eraser = $"../Eraser"
var z = false
var x = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
		
func _on_pressed():
	if Global.what_button_is_pressed != 2:
		Global.what_button_is_pressed = 2
		Global.blockchosenid = 2
	elif Global.what_button_is_pressed == 2:
		pass



func _on_eraser_pressed():
	pass
