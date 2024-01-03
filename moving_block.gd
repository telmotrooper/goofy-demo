extends CharacterBody2D

const SPEED := 500

func _physics_process(delta: float) -> void:
	move_and_slide()

func kick(direction: String) -> void:
	print("kick")
	if direction == "right":
		velocity = Vector2(SPEED,0)
	elif direction == "left":
		velocity = Vector2(-SPEED,0)
	elif direction == "up":
		velocity = Vector2(0, -SPEED)
	elif direction == "down":
		velocity = Vector2(0, SPEED)
