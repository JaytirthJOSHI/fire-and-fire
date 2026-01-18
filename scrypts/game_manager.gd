extends Node

var score = 0

@onready var score_label: Label = $"../Labels/Score_Label"


func add_points ():
	score += 1
	score_label.text = "you have collected " + str(score) + " coins"
