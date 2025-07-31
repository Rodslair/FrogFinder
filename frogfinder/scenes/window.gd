extends Window

var is_there_winner = false

# This script is attached to the WindowSecondEdtion on the window node
# the goal is to toggle a button when needed
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(get_children())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	#var square_player = 0
	#var square_comp = 0
	#var num_disabled = 0
	#var array_counter = 0
	#var game_state: Array = [0,0,0,0,0,0,0,0,0]
	#if Input.is_action_just_released(("click")) and not is_there_winner:
		#for i in get_children():
			#if i.disabled:
				#if i.text == 'X':
					#square_player += 1
				#else:
					#square_comp += 1
				#num_disabled += 1
		#if square_player > square_comp and num_disabled < 9:
			#press_random_button()
		#for i in get_children():
			#game_state[array_counter] = i.text 
			#array_counter += 1 
			#print(array_counter)
		#check_for_winner(game_state)
#func press_random_button():
	#var random_button = randi()%9
	#if get_children()[random_button].disabled :
		#press_random_button()
	#else:
		#get_children()[random_button].disabled = true
		#get_children()[random_button].text = 'O'
#
#func check_for_winner(game_state):
	#print(game_state)
