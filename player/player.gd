extends CharacterBody2D

const SPEED := 500.0

func _physics_process(_delta: float) -> void:	
	velocity.x = Input.get_axis("ui_left", "ui_right") * SPEED
	velocity.y = Input.get_axis("ui_up", "ui_down") * SPEED

	move_and_slide()

	if $Area2D.get_overlapping_bodies().size() > 0 and Input.is_action_just_pressed("ui_select"):
		var moving_block = $Area2D.get_overlapping_bodies()[0]
		moving_block.kick("right")
