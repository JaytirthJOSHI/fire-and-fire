extends Node2D

const  Speed = 60
var direction = 1

@onready var right: RayCast2D = $right
@onready var left: RayCast2D = $left
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if left.is_colliding():
		direction = 1
		animated_sprite.flip_h = true
	
	position.x += direction * Speed * delta
