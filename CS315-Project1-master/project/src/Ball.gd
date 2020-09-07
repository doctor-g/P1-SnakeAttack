extends RigidBody2D

export var strength = 100
var _launch_count = 0
var _horizontal_count = 0


func _process(_delta):
	
	var vector_1 = get_node("GUI/AngleSlider").value
	strength = get_node("GUI/PowerSlider").value
	var direction = Vector2(vector_1,-10).normalized()
	var velocity = (8*strength) * direction

	if Input.is_action_just_pressed("launch"):
		if _launch_count < 5:
			apply_impulse(Vector2.ZERO, velocity)
			_launch_count += 1

	if Input.is_action_just_pressed("move_left"):
		if _horizontal_count < 5:
			apply_impulse(Vector2.ZERO, Vector2(-100, 0))
			_horizontal_count += 1

	if Input.is_action_just_pressed("move_right"):
		if _horizontal_count < 5:
			apply_impulse(Vector2.ZERO, Vector2(100, 0))
			_horizontal_count += 1

	if Input.is_action_just_pressed("Reset Game"):
			get_tree().reload_current_scene()



func _on_Target_body_entered(body):
	print("You win")
