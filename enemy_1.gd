extends CharacterBody2D
var y_vel  : float = 0
var y_time : float = 1

func y_vel_manager(delta:float) ->float:
	y_time -= delta
	if y_time <= 0:
		y_vel = randfn(-80,80)
		if y_vel + position.y > 648 \
		or y_vel + position.y < 0:
			y_vel *= -1
		y_time = 0
		
	return y_vel

func _physics_process(delta: float) -> void:
	velocity = Vector2(-80,y_vel)
	move_and_slide()
	
	y_vel = y_vel_manager(delta)
