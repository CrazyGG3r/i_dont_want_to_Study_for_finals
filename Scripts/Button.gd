extends Button

# Called when the node enters the scene tree for the first time.
var main_Text = "Start"
var flag_focus =  0

func _ready():
	main_Text = "Start"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_mouse_entered():
	flag_focus = 1


func _on_mouse_exited():
	flag_focus = 0
