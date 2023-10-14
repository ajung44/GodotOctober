extends Timer

var fruit1= preload("res://scenes/SampleFruit.tscn")
var max_speed = 150
var nums = [-1, 1]

func _on_GameTimer_timeout():									
	var lifeCanvas = get_tree().get_nodes_in_group("Life")[0]
	if (lifeCanvas.current_life > 0):
		randomize()
		var fruits = [fruit1]
		var kinds = fruits[randi() % fruits.size()]
		var fruit = kinds.instance()
		fruit.position = Vector2(rand_range(100, 990), rand_range(100, 590))
		fruit.apply_central_impulse(Vector2(rand_range(150, 250) * nums[randi() % nums.size()], 0))
		add_child(fruit)
		wait_time = rand_range(0,1)
