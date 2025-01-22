extends CharacterBody2D

const acceleration = 50
var speed = 50

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func get_input():
	var input_direction = Input.get_vector("move player left ", "move player right","move player up","move player down")
	velocity = input_direction * speed
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta: float):
	get_input()
	move_and_slide()
