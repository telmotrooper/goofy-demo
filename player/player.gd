extends CharacterBody2D

const SPEED := 500.0

func _physics_process(_delta: float) -> void:	
	velocity.x = Input.get_axis("ui_left", "ui_right") * SPEED
	velocity.y = Input.get_axis("ui_up", "ui_down") * SPEED

	move_and_slide()
	
	var collision_data = get_collision_data()
	
	if collision_data.size() > 0 and Input.is_action_just_pressed("ui_select"):
		var moving_block = collision_data[1]
		moving_block.kick(collision_data[0])

func get_collision_data() -> Array:
	if $AreaDown.get_overlapping_bodies().size() > 0:
		return ["down", $AreaDown.get_overlapping_bodies()[0]]
	if $AreaLeft.get_overlapping_bodies().size() > 0:
		return ["left", $AreaLeft.get_overlapping_bodies()[0]]
	if $AreaRight.get_overlapping_bodies().size() > 0:
		return ["right", $AreaRight.get_overlapping_bodies()[0]]
	return []
