extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	yield(get_tree().create_timer(1), "timeout")
	if not get_node("VisibilityNotifier2D").is_on_screen():
		print("deleted sliced fruit")
		queue_free()
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
