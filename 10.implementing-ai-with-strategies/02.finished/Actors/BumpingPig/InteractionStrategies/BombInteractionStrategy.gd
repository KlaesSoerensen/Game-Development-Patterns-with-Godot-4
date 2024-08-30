extends InteractionStrategy

func execute() -> void:
	context.pick_command.object = interacted_area.owner
	context.actor.picking_object_type = "bomb"
	context.actor.throwable_factory.product_packed_scene = preload("res://Objects/Bomb/Bomb.tscn")
	context.actor.throwable_factory.target_container_name = "Bombs"
	context.pick_command.execute()
	context.actor.find_child("ThrowVisionArea2D").area_entered.connect(context._on_throw_vision_area_2d_area_entered)
