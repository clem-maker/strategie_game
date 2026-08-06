extends CharacterBody2D

var target : CharacterBody2D

func _ready() -> void:
	position = Vector2( (get_window().size.x / 3 ) , (get_window().size.y / 2 ) )
	target = $"../enemy_1"
	
	
func _physics_process(delta: float) -> void:
	if is_instance_valid(target):
		var richtungs_vec2 : Vector2 = target.position
		

	
