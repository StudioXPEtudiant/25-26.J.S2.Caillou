extends Node2D

@export var Player : Node2D

@export var Speed = 100
@export var RunSpeed = Speed * 2.5
@export var WalkSpeed = Speed

var WalkUp : bool
var WalkDown : bool
var WalkLeft : bool
var WalkRight : bool

var IsSprinting : bool


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	WalkUp = Input.is_action_pressed("Player_Up")
	WalkDown = Input.is_action_pressed("Player_Down")
	WalkLeft = Input.is_action_pressed("Player_Left")
	WalkRight = Input.is_action_pressed("Player_Right")
	
	IsSprinting = Input.is_action_pressed("Player_Sprint")
	
	print("-----------")
	print(WalkUp)
	print(WalkDown)
	print(WalkLeft)
	print(WalkRight)
	print("-----------")
	
	if WalkUp == true :
		walkUp(delta)
	if WalkDown == true :
		walkDown(delta)
	if WalkLeft == true :
		walkLeft(delta)
	if WalkRight == true :
		walkRight(delta)


func walkUp(delta) :
	Player.position.y -= WalkSpeed * delta

func walkDown(delta) :
	Player.position.y += WalkSpeed * delta

func walkLeft(delta) :
	Player.position.x -= WalkSpeed * delta

func walkRight(delta) :
	Player.position.x += WalkSpeed * delta
