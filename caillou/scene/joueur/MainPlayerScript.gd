extends CharacterBody2D

@export var Player : Node2D

@export var Speed = 10
@export var ActualSpeed = Speed
@export var RunFactor = 2.5


var animation
var animationSpeed : float

var WalkY : float
var WalkX : float
var newVel : Vector2

var IsSprinting : bool

var Inventory : bool


# Called when the node enters the scene tree for the first time.
func _ready():
	animation = find_child("AnimationWaiting")
	animation.speed_scale = animationSpeed
	animation.play()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	ActualSpeed = Speed
	#variable touche actualisation
	WalkY = -Input.get_axis("Player_Down","Player_Up") * ActualSpeed
	WalkX = Input.get_axis("Player_Left","Player_Right") * ActualSpeed
	
	IsSprinting = Input.is_action_pressed("Player_Sprint")
	
	Inventory = Input.is_action_pressed("Player_Inventory")
	
	#-------------------------------------------------
	#print("-----------")
	#print()
	#print("inventory : ", Inventory)
	#print()
	#print("walkY : ", WalkY)
	#print("walkX : ", WalkX)
	#print()
	#print("speed : ", Speed)
	#print("actual speed : ", ActualSpeed)
	#print ("run factor : ", RunFactor)
	#print("sprint : ", IsSprinting)
	#print("animationSpeed : ",animationSpeed)
	#print()
	#-------------------------------------------------
	
	if Inventory == true :
		inventoryOpen()
	
	#-------------------------------------------------
	
	newVel = Vector2(WalkX,WalkY)
	
	if IsSprinting == true :
		ActualSpeed *= RunFactor
		newVel *= ActualSpeed
	else :
		newVel *= ActualSpeed
	
	velocity = newVel
	move_and_slide()
	
	animationSpeed = ActualSpeed / 40
	if animationSpeed == 0 :
		animationSpeed += 0.5
	
	#////////
	if velocity.y < 0 :
		animation.speed_scale = animationSpeed * 20
		if animation != find_child("AnimationUpWalk") :
			animation.stop()
			animation.hide()
			animation = find_child("AnimationUpWalk")
			animation.show()
			animation.play()
	#////////
	if velocity.y > 0 :
		animation.speed_scale = animationSpeed * 20
		if animation != find_child("AnimationDownWalk") :
			animation.stop()
			animation.hide()
			animation = find_child("AnimationDownWalk")
			animation.show()
			animation.play()
	#////////
	if velocity.x > 0 :
		animation.speed_scale = animationSpeed * 7
		if animation != find_child("AnimationRightWalk") :
			animation.stop()
			animation.hide()
			animation = find_child("AnimationRightWalk")
			animation.show()
			animation.play()
	#////////
	if velocity.x < 0 :
		animation.speed_scale = animationSpeed * 7
		if animation != find_child("AnimationLeftWalk") :
			animation.stop()
			animation.hide()
			animation = find_child("AnimationLeftWalk")
			animation.show()
			animation.play()
	#////////
	if velocity.x == 0 && velocity.y == 0 :
		animation.speed_scale = 1
		if animation != find_child("AnimationWaiting") :
			animation.stop()
			animation.hide()
			animation = find_child("AnimationWaiting")
			animation.show()
			animation.play()


func inventoryOpen() :
	pass
