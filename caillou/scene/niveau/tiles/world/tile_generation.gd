extends Node2D


var central1 = preload("res://scene/niveau/tiles/central1/central1.tscn")

var tileNumber = 0
var tile

var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	generation()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func generation():
	tileNumber = rng.randi_range(1, 1)
	
	if tileNumber == 1 :
		tile = central1.instantiate()
		add_child(tile)
		
	
