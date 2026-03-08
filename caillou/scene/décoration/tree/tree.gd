extends Node2D

var rng = RandomNumberGenerator.new()
var texture = 0

@export var oppacityArea : Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	tree_generating()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func tree_generating():
	if texture == 0 :
		texture = rng.randi_range(1, 1)
		tree_texturing()
	#	print ("texture généré : ", texture)
	if texture == 0 :
		print("texture non généré")


func tree_texturing():
	if texture == 1 :
		find_child("arbre1").show()

func tree_oppacity():
	pass
