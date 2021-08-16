extends "res://src/actors/Actor.gd"

func _ready() -> void:
	set_physics_process(false)
	_velocity.x = -speed.x

func _physics_process(delta: float) -> void:
	if is_on_wall():
		_velocity.x *= -1.0
	_velocity.y = move_and_slide(_velocity, FLOOR_NORMAL).y
