extends Node2D


var central1 = preload("res://scene/niveau/tiles/central1/central1.tscn")

var tileNumber = 0
var tile
var Xmax = 2
var Ymax = 2
var X = -2
var Y = -2

var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Y <= Ymax :
		if X <= Xmax :
			generation()
		else :
			X = Xmax * -1
			Y += 1


func generation():
	tileNumber = rng.randi_range(1, 1)
	position.x = X * 1128
	position.y = Y * 1128
	if tileNumber == 1 :
		tile = central1.instantiate()
		add_child(tile)
		print("central1 generated in X", X, "Y", Y)
	
	X += 1
