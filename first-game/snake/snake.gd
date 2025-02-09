extends Node2D

@export var numBodyParts = 7
@export var distanceBetweenBodyPart = 30
var bodyPart = preload("res://snake/snake body part.tscn")
var bodyPartPosition = 0

func _ready():
	for n in numBodyParts:
		# "generating" the body parts 
		var newBodyPart  = bodyPart.instantiate()
		# setting the position for the next body part
		newBodyPart.position += Vector2(0, bodyPartPosition)
		add_sibling.call_deferred(newBodyPart)
		# increases the distance between the body parts for the next one
		bodyPartPosition = bodyPartPosition + distanceBetweenBodyPart
		
func _physics_process(delta: float) -> void:
	pass
