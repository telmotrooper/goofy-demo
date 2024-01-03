extends CharacterBody2D

const SPEED := 500

func _physics_process(delta: float) -> void:
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = Vector2.ZERO

func kick(direction: String) -> void:
	if direction == "up":
		velocity = Vector2(0, -SPEED)
	elif direction == "down":
		velocity = Vector2(0, SPEED)
	if direction == "right":
		velocity = Vector2(SPEED,0)
	elif direction == "left":
		velocity = Vector2(-SPEED,0)
