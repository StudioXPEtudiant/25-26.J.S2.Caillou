extends Node2D

var tilemapType = "NA"
#NA : erreur
#template : erreur
#normal : tilemap normal

var path_UL = 0
var path_U = 0
var path_UR = 0
var path_R = 0
var path_DR =0
var path_D = 0
var path_DL = 0
var path_L = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	tilemapTypeGiving()
	pathGiving()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func tilemapTypeGiving():
	if tilemapType == "NA" :
		if name == "template" :
			tilemapType = "template"
	if tilemapType == "NA" :
		print("tylemap type non donné")
	else :
		print("tylemap type : ", tilemapType)


func pathGiving():
	if tilemapType == "special" :
		pass
	
	
	
	if tilemapType == "normal" :
		
		#path UL
		if name == "" :
			path_UL == 1
		#path U
		if name == "" :
			path_U == 1
		#path UR
		if name == "" :
			path_UR == 1
		#path R
		if name == "" :
			path_R == 1
		#path DR
		if name == "" :
			path_DR == 1
		#path D
		if name == "" :
			path_D == 1
		#path DL
		if name == "" :
			path_DL == 1
		#path L
		if name == "" :
			path_L == 1








