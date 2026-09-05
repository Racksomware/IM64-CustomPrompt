class_name InvPauseMenu extends Control

@export var mainAudio : AudioStreamWAV

var audioStuff = {
	"arpSounds" : 
		"res://mario/sfx/invSounds/UIArp.wav",
	
	"metalSounds": [
		"res://mario/sfx/invSounds/UIMetal1.wav",
		"res://mario/sfx/invSounds/UIMetal2.wav",
		"res://mario/sfx/invSounds/UIMetal3.wav",
		"res://mario/sfx/invSounds/UIMetal4.wav",
	],
	
	"metalSoundsSpecial":
		"res://mario/sfx/invSounds/UIMetalHit.wav",
	
	"impactSounds": [
		"res://mario/sfx/invSounds/UIImpact1.wav",
		"res://mario/sfx/invSounds/UIImpact2.wav",
		"res://mario/sfx/invSounds/UIImpact3.wav"
	],
	
	"pitchSounds": [
		"res://mario/sfx/invSounds/UIPitch1.wav",
		"res://mario/sfx/invSounds/UIPitch2.wav"
	],
	"woodSounds": [
		"res://mario/sfx/invSounds/UIWood1.wav",
		"res://mario/sfx/invSounds/UIWood2.wav",
		"res://mario/sfx/invSounds/UIWood3.wav",
		"res://mario/sfx/invSounds/UIWood4.wav",
		"res://mario/sfx/invSounds/UIWood5.wav"
	],
	"woodSoundsSpecial":
		"res://mario/sfx/invSounds/UIWoodHit.wav"
}

func _ready():
	print("Opening pause menu")

func _process(delta):
	var inputJoystick = Input.get_vector("mario_stick_left", "mario_stick_right", "mario_stick_up", "mario_stick_down", 0)
	
	if Input.is_action_just_pressed("start_button"):
		print("Closing and resuming game logic")
		_unpause()

func _unpause() -> void:
	await get_tree().create_timer(0.05).timeout
	SOGlobal.current_mario._paused = false
	queue_free()

func easierAudioPlay():
	print("ToDo lists")
