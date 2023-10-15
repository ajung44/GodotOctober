extends RigidBody2D

onready var timer: Timer= $Timer
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	timer.start(1)	
	pass # Replace with function body.

func _physics_process(delta):
	yield(timer, "timeout")
	if not get_node("VisibilityNotifier2D").is_on_screen():
		print("deleted sliced fruit")
		queue_free()
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
