extends Node2D



func _on_button_pressed():
	get_tree().quit()


@onready var explosion = preload("res://Explosian.tscn")

func _process(delta):
	if Input.is_action_just_pressed("explode"):
		var explosion_instance = explosion.instantiate()
		explosion_instance.position= get_global_mouse_position()
		add_child(explosion_instance)




