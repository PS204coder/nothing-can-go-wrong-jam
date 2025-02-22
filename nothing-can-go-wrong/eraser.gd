extends TextureButton
@onready var ant_block = $"../Ant Block"
var x = false 
var z = false
# Called when the node enters the scene tree for the first time.
func _ready():
	disabled = true
	visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.inventory_visibility == true:
		disabled = false
		visible = true
	if Global.inventory_visibility == false:
		disabled = true
		visible = false
		

func _on_pressed():
	if x == false:
		Global.what_button_is_pressed = 01
		x = true
	if x == true:
		Global.what_button_is_pressed = 0 
		x = false
