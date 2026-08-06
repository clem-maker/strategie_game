extends Node2D
var x_time =1
func _ready() -> void:
	pass
	
func _physics_process(delta: float) -> void:
	x_time -= delta
	if x_time >= 0:
		var enemy_szene = preload("res://enemy_1.tscn")
		enemy_szene.instantiate()
		add_child(enemy_szene)
		x_time = 1
