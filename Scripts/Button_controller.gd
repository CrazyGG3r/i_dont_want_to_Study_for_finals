extends Control


@onready var button_1 = $"../VBoxContainer/Start buttin"



var all_butts = [button_1]
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for a in all_butts:
		if a and a.flag_focus == 0:
			var str = String()
			for b in range(5):
				str = str + char(int(randf_range(97,122)))
				a.text = str
