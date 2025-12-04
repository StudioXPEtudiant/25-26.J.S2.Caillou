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

var Inventory : bool


# Called when the node enters the scene tree for the first time.
func _ready():
	animation = $CollisionShape2D/AnimationWaiting
	animation.speed_scale = animationSpeed
	animation.play()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	WalkUp = Input.is_action_pressed("Player_Up")
	WalkDown = Input.is_action_pressed("Player_Down")
	WalkLeft = Input.is_action_pressed("Player_Left")
	WalkRight = Input.is_action_pressed("Player_Right")
	
	IsSprinting = Input.is_action_pressed("Player_Sprint")
	
	Inventory = Input.is_action_pressed("Player_Inventory")
	
	print("-----------")
	print(Inventory)
	print(WalkUp)
	print(WalkDown)
	print(WalkLeft)
	print(WalkRight)
	print("-----------")
	
	if Inventory == true :
		inventoryOpen()
	
	
	if WalkUp == true :
		if IsSprinting == false :
			Player.position.y -= WalkSpeed * delta
			animation.speed_scale = animationSpeed * 5
		else :
			Player.position.y -= RunSpeed * delta
			animation.speed_scale = animationSpeed * 20
		if animation != find_child("AnimationUpWalk") :
			animation.stop()
			animation.hide()
			animation = find_child("AnimationUpWalk")
			animation.show()
			animation.play()

	if WalkDown == true :
		if IsSprinting == false :
			Player.position.y += WalkSpeed * delta
			animation.speed_scale = animationSpeed * 5
		else :
			Player.position.y += RunSpeed * delta
			animation.speed_scale = animationSpeed * 20
		if animation != find_child("AnimationDownWalk") :
			animation.stop()
			animation.hide()
			animation = find_child("AnimationDownWalk")
			animation.show()
			animation.play()
	
	if WalkLeft == true :
		if IsSprinting == false :
			Player.position.x -= WalkSpeed * delta
			animation.speed_scale = animationSpeed * 3
		else :
			Player.position.x -= RunSpeed * delta
			animation.speed_scale = animationSpeed * 7
		if animation != find_child("AnimationLeftWalk") :
			animation.stop()
			animation.hide()
			animation = find_child("AnimationLeftWalk")
			animation.show()
			animation.play()

	if WalkRight == true :
		if IsSprinting == false :
			Player.position.x += WalkSpeed * delta
			animation.speed_scale = animationSpeed * 3
		else :
			Player.position.x += RunSpeed * delta
			animation.speed_scale = animationSpeed * 7
		if animation != find_child("AnimationRightWalk") :
			animation.stop()
			animation.hide()
			animation = find_child("AnimationRightWalk")
			animation.show()
			animation.play()
	
	if WalkUp != true && WalkDown != true && WalkLeft != true && WalkRight != true :
		animation.speed_scale = animationSpeed
	if animation != find_child("AnimationWaiting") :
		animation.stop()
		animation.hide()
		animation = find_child("AnimationWaiting")
		animation.show()
		animation.play()


func inventoryOpen() :
	pass


func walkUp(delta) :
	if IsSprinting == false :
		Player.position.y -= WalkSpeed * delta
		animation.speed_scale = animationSpeed * 5
	else :
		Player.position.y -= RunSpeed * delta
		animation.speed_scale = animationSpeed * 20
	if animation != $CollisionShape2D/AnimationUpWalk :
		animation.stop()
		animation.hide()
		animation = $CollisionShape2D/AnimationUpWalk
		animation.show()
		animation.play()



func walkDown(delta) :
	if IsSprinting == false :
		Player.position.y += WalkSpeed * delta
		animation.speed_scale = animationSpeed * 5
	else :
		Player.position.y += RunSpeed * delta
		animation.speed_scale = animationSpeed * 20
	if animation != $CollisionShape2D/AnimationDownWalk :
		animation.stop()
		animation.hide()
		animation = $CollisionShape2D/AnimationDownWalk
		animation.show()
		animation.play()



func walkLeft(delta) :
	if IsSprinting == false :
		Player.position.x -= WalkSpeed * delta
		animation.speed_scale = animationSpeed * 3
	else :
		Player.position.x -= RunSpeed * delta
		animation.speed_scale = animationSpeed * 7
	if animation != $CollisionShape2D/AnimationLeftWalk :
		animation.stop()
		animation.hide()
		animation = $CollisionShape2D/AnimationLeftWalk
		animation.show()
		animation.play()


func walkRight(delta) :
	if IsSprinting == false :
		Player.position.x += WalkSpeed * delta
		animation.speed_scale = animationSpeed * 3
	else :
		animation.speed_scale = animationSpeed * 7
		Player.position.x += RunSpeed * delta
	if animation != $CollisionShape2D/AnimationRightWalk :
		animation.stop()
		animation.hide()
		animation = $CollisionShape2D/AnimationRightWalk
		animation.show()
		animation.play()


func dontwalk() :
	animation.speed_scale = animationSpeed
	if animation != $CollisionShape2D/AnimationWaiting :
		animation.stop()
		animation.hide()
		animation = $CollisionShape2D/AnimationWaiting
		animation.show()
		animation.play()
