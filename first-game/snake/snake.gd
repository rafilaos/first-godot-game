extends Node2D

var bodyPart = preload("res://snake/snake body part.tscn")
var numBodyParts = 7
var bodyPartPosition = 0

func _ready():
	for n in numBodyParts:
		# "generating" the body parts and setting the distance
		var newBodyPart  = bodyPart.instantiate()
		newBodyPart.position += Vector2(0, bodyPartPosition)
		add_child(newBodyPart)
		# increases the distance between the body parts for the next one
		bodyPartPosition = bodyPartPosition + 10
