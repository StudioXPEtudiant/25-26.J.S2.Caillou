extends Node2D


var central1 = preload("res://scene/niveau/tiles/central1/central1.tscn")
var central2 = preload("res://scene/niveau/tiles/central2/central2.tscn")
var Line1 = preload("res://scene/niveau/tiles/Line1/Line1.tscn")

var tileNumber = 0
var tile
var Xmax = 2
var Ymax = 2
var X = -2
var Y = -2
var orientation = 0

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
	tileNumber = rng.randi_range(1, 3)
	position.x = X * 1128
	position.y = Y * 1128
	#if tileNumber == 1 :
	#	tile = central1.new()
	#	add_child(tile)
	#	print("central1 generated in X", X, "Y", Y)
	if tileNumber == 2 :
		tile = central2.instantiate()
		add_child(tile)
		#$tilemap/tile.reparent($tilemap/generator/central2)
		print("central2 generated in X", X, "Y", Y)
	if tileNumber == 3 :
		tile = Line1.instantiate()
		add_child(tile)
		orientation = rng.randi_range(1, 4)
		if orientation == 1 :
			orientation = 1
		elif orientation == 2  :
			orientation = 90
		elif orientation == 3 :
			orientation = 180
		else :
			orientation = 270
		$tilemap/generator/Line1.rotation *= orientation
		#$tilemap/tile.reparent($tilemap/generator/Line1)
		print("Line1 generated in X", X, "Y", Y, ", orientation = ", orientation)
	
	X += 1
