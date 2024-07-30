extends Node2D


@onready var explosion = preload ("res://Explosian.tscn)

func _process(delta):
	if input.is_action_just_pressed("explode"):
		var explosion_instance = explosion.instantiate()
		explosion_instance.postion = get_global_mouse_position()
		add_child(explosion_instance)
