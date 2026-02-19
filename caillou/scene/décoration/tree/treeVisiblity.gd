extends Node2D

@export var tree : Node2D
var Oppacity

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func visibility():
	Oppacity = get_parent().oppacity
	Oppacity = 30
