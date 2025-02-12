extends RigidBody2D

@onready var score_point: ScorePoint = $ScorePoint

func _on_interactive_area_2d_interaction_available():
	score_point.increaseScore()
	queue_free()
