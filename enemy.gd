extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

 # or CharacterBody2D if that's your enemy root
# or CharacterBody2D if that's your enemy root
 # or CharacterBody2D if that's your enemy root

const STOMP_THRESHOLD := 5.0  # tweak this if needed

func _on_area_2d_body_entered(body: Node) -> void:
	if body.is_in_group("player"):
		var player_y = body.global_position.y
		var enemy_y = global_position.y
		print("Player Y:", player_y, " Enemy Y:", enemy_y)

		# Player is above enemy → stomp
		if player_y < enemy_y - STOMP_THRESHOLD:
			print("Stomped! Destroying only this enemy:", name)
			queue_free()
		else:
			print("Side hit! Damaging player")
			if body.has_method("take_damage"):
				body.take_damage(1)
