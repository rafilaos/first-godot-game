extends RigidBody2D

const acceleration = 50
var direction = Vector2(0 , 0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta: float):
	if Input.is_action_just_pressed("move player down"):
		direction = Vector2(0 , 50)
		apply_central_force(direction * acceleration)
		
	if Input.is_action_just_pressed("move player up"):
		direction = Vector2(0 , -50)
		apply_central_force(direction * acceleration)
		
	if Input.is_action_just_pressed("move player left "):
		direction = Vector2(-50 , 0)
		apply_central_force(direction * acceleration)
		
	if Input.is_action_just_pressed("move player right"):
		direction = Vector2(50 , 0)
		apply_central_force(direction * acceleration)
	
