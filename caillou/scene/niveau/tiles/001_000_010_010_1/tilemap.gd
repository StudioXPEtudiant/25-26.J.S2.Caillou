extends Node2D

var tilemapType = "NA"
#NA : erreur
#template : erreur
#normal : tilemap normal

var path_U = Vector3(0, 0, 0)
var path_R = Vector3(0, 0, 0)
var path_D = Vector3(0, 0, 0)
var path_L = Vector3(0, 0, 0)


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
		if name == "central1" || name == "central2" :
			tilemapType = "normal"
			path_U = Vector3(1, 1, 1)
			path_R = Vector3(1, 1, 1)
			path_D = Vector3(1, 1, 1)
			path_L = Vector3(1, 1, 1)
		if name == "010_010_010_010_1" :
			tilemapType = "normal"
			path_U = Vector3(0, 1, 0)
			path_R = Vector3(0, 1, 0)
			path_D = Vector3(0, 1, 0)
			path_L = Vector3(0, 1, 0)
	if tilemapType == "NA" :
		print("tylemap type non donné")
	else :
		print("tylemap type : ", tilemapType)


func pathGiving():
	if tilemapType == "special" :
		pass
	
	
	
	if tilemapType == "normal" :
		
		#path U
		if name == "" :
			path_U.x == 1
		if name == "" :
			path_U.y == 1
		if name == "" :
			path_U.z == 1
		#path R
		if name == "" :
			path_R.x == 1
		if name == "" :
			path_R.y == 1
		if name == "" :
			path_R.z == 1
		#path D
		if name == "" :
			path_D.x == 1
		if name == "" :
			path_D.y == 1
		if name == "" :
			path_D.z == 1
		#path L
		if name == "" :
			path_L.x == 1
		if name == "" :
			path_L.y == 1
		if name == "" :
			path_L.z == 1
		
		#print("")
		#print("path :")
		#print("path UL : ", path_Ul)
		#print("path U : ", path_U)
		#print("path UR : ", path_Ur)
		#print("path R : ", path_R)
		#print("path DR : ", path_Dr)
		#print("path D : ", path_D)
		#print("path DL : ", path_Dl)
		#print("path L : ", path_L)
		#print("")
	








