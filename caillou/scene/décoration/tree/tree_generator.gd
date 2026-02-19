extends Node2D

var rng = RandomNumberGenerator.new()
var texture = 0
var Stexture = "NA"

# Called when the node enters the scene tree for the first time.
func _ready():
	tree_generating()
	tree_texturing()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func tree_generating():
	if texture == 0 :
		texture = rng.randi_range(1, 1)
		print ("texture généré : ", texture)
	if texture == 0 :
		print("texture non généré")


func tree_texturing():
	if texture == 1 :
		Stexture = "arbre1"
	find_child(Stexture).show()

