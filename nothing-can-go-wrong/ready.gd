extends TextureButton

var x = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.inventory_visibility == false:
		visible = false
		disabled = true
	elif Global.inventory_visibility == true:
		visible = true
		disabled = false
	
	
	if x == true:
		Global.simulation_start = true
		
		


func _on_button_down():
	x = true
func _on_button_up():
	x = false
