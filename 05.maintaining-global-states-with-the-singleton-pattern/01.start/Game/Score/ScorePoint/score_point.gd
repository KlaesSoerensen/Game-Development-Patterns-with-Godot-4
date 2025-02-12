extends Node2D

@export var scoreAmount : int = 100	
@export var pop_label_scene : Resource = preload("res://Interface/PopLabel/PopLabel.tscn")

func increaseScore(_scoreAmount = scoreAmount, _popScore = true) -> void:
	var popLabel : Resource = pop_label_scene.instantiate()
	
	Score.currentScore += _scoreAmount
	
	var game = find_parent("Game")
	if game:
		game.update_score_label()
	if _popScore:
		pop_label()
		
	
func pop_label()-> void:
	var popLabel = pop_label_scene.instantiate()
	find_parent("Level").find_child("PopLabels").add_child(popLabel)
	popLabel.pop(str(scoreAmount), global_position)
