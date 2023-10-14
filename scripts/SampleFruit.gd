extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (PackedScene) var SlicedFruit

# Called when the node enters the scene tree for the first time.
func _ready():
	input_pickable = true
	pass # Replace with function body.

func _mouse_enter():
	sliceFruit()
	queue_free()
	
func sliceFruit() -> void:
	var fruit = SlicedFruit.instance();
	var fruit2 = SlicedFruit.instance();
	
	var scene = get_tree().get_current_scene()
	print(scene, " ", scene.get_child_count())
	scene.add_child(fruit)
	scene.add_child(fruit2)
	fruit.transform = get_node("Position2D").global_transform
	fruit2.transform = get_node("Position2D").global_transform
	
func _physics_process(delta):
	if not get_node("VisibilityNotifier2D").is_on_screen():
		print("deleted sample fruit")															
		var lifeCanvas = get_tree().get_nodes_in_group("Life")[0]
		print(lifeCanvas.name)
		lifeCanvas.remove_life()
		if (lifeCanvas.current_life <= 0):
			lifeCanvas.game_over_panel.visible = true
		queue_free()
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
