extends Node2D

@export var Player : Node2D

@export var ID = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	#Player =
	IDPlacing()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func IDPlacing():
	if name == "hysteria_pillule.tscn" :
		ID = 1
		print ("sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss")
