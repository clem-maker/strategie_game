extends CharacterBody2D

var target : CharacterBody2D
var richtungs_vec2 : Vector2
func _ready() -> void:
	
	position = Vector2( (get_window().size.x / 3 ) , (get_window().size.y / 2 ) )
	target = $"../enemy_1"
func _physics_process(_delta: float) -> void:
	if is_instance_valid(target):
		richtungs_vec2 = target.position - position
		queue_redraw()
func _draw() -> void:
	draw_line( Vector2.ZERO ,richtungs_vec2,Color.WHITE,1)
