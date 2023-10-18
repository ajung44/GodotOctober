extends Timer

var fruit1= preload("res://scenes/SampleFruit.tscn")
var pumpkin = preload("res://scenes/pumpkin.tscn")
var squash = preload("res://scenes/squash.tscn")
var sweetPotato = preload("res://scenes/SweetPotato.tscn")
var carrot = preload("res://scenes/Carrot.tscn")
var apple = preload("res://scenes/Apple.tscn")
var cranberry = preload("res://scenes/Cranberry.tscn")

var max_speed = 150
var nums = [-1, 1]

func _on_GameTimer_timeout():									
	var lifeCanvas = get_tree().get_nodes_in_group("Life")[0]
	if (lifeCanvas.current_life > 0):
		randomize()
		var fruits = [fruit1, pumpkin, squash, sweetPotato, carrot, apple, cranberry]
		var kinds = fruits[randi() % fruits.size()]
		var fruit = kinds.instance()
		fruit.position = Vector2(rand_range(50, 974), 650)
		if (fruit.position.x < 512):
			fruit.apply_central_impulse(Vector2(rand_range(0, 800), rand_range(-300, -800)))
		else:
			print("Spawned right")
			fruit.apply_central_impulse(Vector2(rand_range(-800, 0), rand_range(-300, -800)))
		add_child(fruit)
		wait_time = rand_range(0,1)
