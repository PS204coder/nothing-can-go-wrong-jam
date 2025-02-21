extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.inventory_visibility == true:
		visible = false
		$Ant_Block.disabled = true
		$Ant_Block.visible = false
		$Eraser.disabled = true
		$Eraser.visible = false
		
	else:
		visible = true
		$Ant_Block.disabled = false
		$Ant_Block.visible = true
		$Eraser.disabled = false
		$Eraser.visible = true
