extends Node2D

var ID : int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	IDplacing()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func IDplacing() :
	if ID == 0 :
		ID = 1
		print ("ID placed : ", ID)
	if ID == 0 :
		print ("ID not placed")
