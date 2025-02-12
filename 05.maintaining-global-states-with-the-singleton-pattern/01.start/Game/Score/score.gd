extends Node2D

var currentScore : int = 0:
	set(value):
		currentScore = value 
		if (value > highScore):
			highScore = value


var highScore : int = 0

func resetScore() -> void:
	currentScore = 0
