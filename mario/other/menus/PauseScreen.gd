class_name InvPauseMenu extends Control

func _ready():
	print("test")

func _process(delta):
	var inputJoystick = Input.get_vector("mario_stick_left", "mario_stick_right", "mario_stick_up", "mario_stick_down", 0)
	
	
