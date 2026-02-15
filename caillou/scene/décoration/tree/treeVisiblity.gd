extends Area2D

@export var tree : Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	area_entered.connect(entered)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func entered():
	print("goodzerloijgr")
	#tree.get_script()
	pass
