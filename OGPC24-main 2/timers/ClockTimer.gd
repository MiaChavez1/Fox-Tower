extends Node2D

@onready var arrow = $arrow
var arrowRotation= 300


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	DayTimer.time = $Timer2.get_time_left()

func _on_timer_timeout():
	arrowRotation += .05
	$TextureProgressBar.value += 1
	arrow.set_rotation(arrowRotation)

