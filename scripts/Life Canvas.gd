extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var lifeValue = $LifeValue
onready var game_over_panel = $GameOverPanel
var current_life = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	game_over_panel.visible = false
	lifeValue.text = str(current_life)
	pass # Replace with function body.
													

func remove_life():
	current_life = current_life - 1
	lifeValue.text = str(current_life)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
