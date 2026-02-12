extends Node2D

var tilemapType = "NA"
#NA : erreur
#template : erreur
#normal : tilemap normal

var path_UL
var path_U
var path_UR
var path_R
var path_DR
var path_D
var path_DL
var path_L

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
