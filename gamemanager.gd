extends Node
@onready var points_label: Label = %"Pointslabel"

var points= 0
var trophy= 0

func add_point():
	points += 1
	print(points)
	points_label.text = "Points: " + str(points)
	 
