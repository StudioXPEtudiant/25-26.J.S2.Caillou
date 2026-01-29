extends Button

var button : Button = get

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Button.ACTION_MODE_BUTTON_PRESS == true :
		buttonChecker()


func buttonChecker() :
	if button.name == menu_button_play :
		pass
