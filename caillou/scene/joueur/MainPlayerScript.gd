extends Node2D

@export var Player : Node2D

@export var Speed = 100
@export var RunSpeed = Speed * 2.5
@export var WalkSpeed = Speed

var animation
var animationSpeed = Speed / 100

var WalkUp : bool
var WalkDown : bool
var WalkLeft : bool
var WalkRight : bool

var IsSprinting : bool


# Called when the node enters the scene tree for the first time.
func _ready():
	animation = $CharacterBody2D/CollisionShape2D/AnimationWaiting
	animation.speed_scale = animationSpeed
	animation.play()



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
	if IsSprinting == false :
		Player.position.y -= WalkSpeed * delta
		animation.speed_scale = animationSpeed * 5
	else :
		Player.position.y -= RunSpeed * delta
		animation.speed_scale = animationSpeed * 20
	if animation != $CharacterBody2D/CollisionShape2D/AnimationUpWalk :
		animation.stop()
		animation.hide()
		animation = $CharacterBody2D/CollisionShape2D/AnimationUpWalk
		animation.show()
		animation.play()

func walkDown(delta) :
	if IsSprinting == false :
		Player.position.y += WalkSpeed * delta
		animation.speed_scale = animationSpeed * 5
	else :
		Player.position.y += RunSpeed * delta
		animation.speed_scale = animationSpeed * 20
	if animation != $CharacterBody2D/CollisionShape2D/AnimationDownWalk :
		animation.stop()
		animation.hide()
		animation = $CharacterBody2D/CollisionShape2D/AnimationDownWalk
		animation.show()
		animation.play()

func walkLeft(delta) :
	if IsSprinting == false :
		Player.position.x -= WalkSpeed * delta
		animation.speed_scale = animationSpeed * 3
	else :
		Player.position.x -= RunSpeed * delta
		animation.speed_scale = animationSpeed * 7
	if animation != $CharacterBody2D/CollisionShape2D/AnimationLeftWalk :
		animation.stop()
		animation.hide()
		animation = $CharacterBody2D/CollisionShape2D/AnimationLeftWalk
		animation.show()
		animation.play()

func walkRight(delta) :
	if IsSprinting == false :
		Player.position.x += WalkSpeed * delta
		animation.speed_scale = animationSpeed * 3
	else :
		animation.speed_scale = animationSpeed * 7
		Player.position.x += RunSpeed * delta
	if animation != $CharacterBody2D/CollisionShape2D/AnimationRightWalk :
		animation.stop()
		animation.hide()
		animation = $CharacterBody2D/CollisionShape2D/AnimationRightWalk
		animation.show()
		animation.play()
