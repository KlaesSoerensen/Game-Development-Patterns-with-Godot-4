extends "res://Actors/BumpingPig/BumpingPig.gd"

@onready var bumping_pig: Node2D = $"."
@onready var loot: Loot2D = $BumpingEnemy2D/Marker2D

func die():
	loot.drop()
	super()
