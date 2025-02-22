extends Node2D

var cp1 = false
var cp2 = false
var cp3 = false
# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.play("ant walk")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if position.x == 257:
		cp3 = true
		cp2 = false
		cp1 = false
	if position.y >= 17 and position.x >= -280:
		cp1 = false
		cp2 = true
		rotation_degrees = 0
	if position.y >= 10 and cp2 == false:
		cp1 = true
		rotation_degrees = 21
	
	
	if cp1 == true:
		position.x += 1.5
		position.y += 0.000000000001
	if cp2 == true:
		position.x += 1
	else:
		position.y += 1
	

func move():
	var tween = create_tween()
	tween.tween_property(self, "position", position , 1)
