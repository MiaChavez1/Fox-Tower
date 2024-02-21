extends Node2D
var paused = false
@onready var pauseMenu = $pauseMenu

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.


func _process(delta):
	if Input.is_action_just_pressed("pause"):
		pause()
		
func pause():
	if paused:
		pauseMenu.hide()
		Engine.time_scale =1
	else:
		pauseMenu.show()
		Engine.time_scale =0
		
	paused = !paused


