extends Node3D

@onready var audioPlayerThing : AudioStreamPlayer3D = $AudioStreamPlayer3D

var checkpointWorldPos : Vector3 = Vector3.ZERO
var checkpointWorldRot : float = 0

func forkenNewFlagz():
	print("Testuz")
	audioPlayerThing.play()

func _ready():
	print("Flag spawned")

func _process(delta) -> void:
	pass
