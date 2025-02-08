extends Crate

@onready var loot_2d: Loot2D = $CharacterBody2D/Loot2D

func shatter():
	loot_2d.drop()
	super()
