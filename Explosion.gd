extends Node2D

onready var timer: Timer= $Timer
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	timer.start(.2)	
	pass # Replace with function body.

func _physics_process(delta):
	yield(timer, "timeout")
	queue_free()
