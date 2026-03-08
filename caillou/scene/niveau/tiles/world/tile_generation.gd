extends Node2D


var central1 = preload("res://scene/niveau/tiles/central/central1.tscn")
var central2 = preload("res://scene/niveau/tiles/central/central2.tscn")
var cross1 = preload("res://scene/niveau/tiles/cross/cross1.tscn")
var Line1 = preload("res://scene/niveau/tiles/Line/Line1.tscn")
var corner1 = preload("res://scene/niveau/tiles/corner/corner1.tscn")
var small4corner1 = preload("res://scene/niveau/tiles/small4corner/small4corner1.tscn")
var _100_010_010_000_1 = preload("res://scene/niveau/tiles/_100_010_010_000/_100_010_010_000_1.tscn")

var tileNumber = 0
var varientNumber = 0

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
	tileNumber = rng.randi_range(1, 6)
	if tileNumber == 1 :
		varientNumber = rng.randi_range(1, 2)
		if varientNumber == 1 :
			tile = central1.instantiate()
		elif varientNumber == 2 :
			tile = central2.instantiate()
	
	
	if tileNumber == 2 :
		varientNumber = rng.randi_range(1, 1)
		if varientNumber == 1 :
			tile = cross1.instantiate()
	
	
	if tileNumber == 3 :
		varientNumber = rng.randi_range(1, 1)
		if varientNumber == 1 :
			tile = Line1.instantiate()
	
	
	if tileNumber == 4 :
		varientNumber = rng.randi_range(1, 1)
		if varientNumber == 1 :
			tile = corner1.instantiate()
	
	
	if tileNumber == 5 :
		varientNumber = rng.randi_range(1, 1)
		if varientNumber == 1 :
			tile = small4corner1.instantiate()
	
	
	if tileNumber == 6 :
		varientNumber = rng.randi_range(1, 1)
		if varientNumber == 1 :
			tile = _100_010_010_000_1.instantiate()
	
	generation2()

func generation2() :
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
	tile.rotation *= orientation
	tile.position.x = X * 1344
	tile.position.y = Y * 1344
	#print("_100_010_010_000 generated in X", X, "Y", Y, ", orientation = ", orientation)
	X += 1
