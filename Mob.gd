extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("AnimatedSprite2D").playing = true
	var mob_types = $AnimatedSprite2D.frames.get_animation_names()  # ["fly", "swim", "walk"]
	$AnimatedSprite2D.animation = mob_types[randi() % mob_types.size()]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
