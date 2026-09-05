extends Node3D

var checkpointWorldPos : Vector3 = Vector3.ZERO
var checkpointWorldRot : float = 0
var checkpointObject = self

func _ready():
	print("Flag Spawned")
	SOGlobal.play_sound(preload("res://mario/sfx/sm64_drop_into_course.wav"))

func _process(delta) -> void:
	print("FlagExists")
