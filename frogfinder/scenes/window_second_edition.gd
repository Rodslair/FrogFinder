extends Node2D

var default_x_size = 250
var default_y_size = 250
var default_pos: Vector2 = Vector2(960, 540)
var file_name = 'Read Me.txt'

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Window.title = str(file_name)
	$Button.text = str(file_name)
	#print($Window.global_position)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	#if the window leaves the playable area it snaps back to where it should be
	if ($Window.position.x > 1700 or $Window.position.y > 1000) and ( not
		Input.is_action_pressed(("click"))
	):
		$Window.position = default_pos


func _on_button_pressed() -> void:
	if not get_node("Window").is_visible():
		$Window.show()
		$Window.size = Vector2(default_x_size,default_y_size)
		$Window.position = default_pos

func _on_window_close_requested() -> void:
	$Window.hide()
	
func _on_window_mouse_exited() -> void:
	print($Window.position)
