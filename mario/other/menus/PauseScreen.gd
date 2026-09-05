class_name InvPauseMenu extends Control
var audioStuff = {
	"arpSounds" : 
		"res://mario/sfx/invSounds/UIArp.wav",
	
	"metalSounds": [
		"res://mario/sfx/invSounds/UIMetal1.wav",
		"res://mario/sfx/invSounds/UIMetal2.wav",
		"res://mario/sfx/invSounds/UIMetal3.wav",
		"res://mario/sfx/invSounds/UIMetal4.wav",
		"res://mario/sfx/invSounds/UIMetalHit.wav"
	],
	
	"impactSounds": [
		"res://mario/sfx/invSounds/UIImpact1.wav",
		"res://mario/sfx/invSounds/UIImpact2.wav",
		"res://mario/sfx/invSounds/UIImpact3.wav"
	]
}


func _ready():
	print("Opening pause menu")

func _process(delta):
	var inputJoystick = Input.get_vector("mario_stick_left", "mario_stick_right", "mario_stick_up", "mario_stick_down", 0)
	print(audioStuff)
	if Input.is_action_just_pressed("start_button"):
		print("Closing and resuming game logic")
		_unpause()

func _unpause() -> void:
	await get_tree().create_timer(0.05).timeout
	SOGlobal.current_mario._paused = false
	queue_free()

func easierAudioPlay():
	print("ToDo lists")
