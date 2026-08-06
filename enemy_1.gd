extends CharacterBody2D
var y_vel  : float = 0
var y_time : float = 1
func _ready() -> void:
	position = Vector2( get_window().size.x , get_window().size.y /2 )
	
	
	
	
	
func y_vel_manager(delta:float) ->float:
	y_vel = randfn(40,-45)
	if ( position.y + (y_vel * delta) > 648 - ($MeshInstance2D.mesh.height)  # wenn y_velocity auserhalb des windows gehen mochte flippen (*-1)
	or   position.y - (y_vel * delta) <   0 + ($MeshInstance2D.mesh.height) ):
		y_vel *= -1
		
	y_time = 1
	return y_vel

func _physics_process(delta: float) -> void:
	velocity = Vector2(-80,y_vel)
	move_and_slide()
	
	y_time -= delta
	if y_time <= 0:
		y_vel = y_vel_manager(delta)


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
