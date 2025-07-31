extends master_window
var is_there_winner = false
var winning_player = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print('start')
	print(get_tree())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var square_player = 0
	var square_comp = 0
	var num_disabled = 0
	var array_counter = 0
	var game_state: Array = [0,0,0,0,0,0,0,0,0]
	if Input.is_action_just_released(("click")) and not is_there_winner:
		for i in $Window.get_children():
			if i.disabled:
				if i.text == 'X':
					square_player += 1
				else:
					square_comp += 1
				num_disabled += 1
		if square_player > square_comp and num_disabled < 9:
			press_random_button()
		for i in $Window.get_children():
			game_state[array_counter] = i.text 
			array_counter += 1 
			print(array_counter)
		winning_player = check_for_winner(game_state)
		if winning_player == 1:
			$WinLabel.show()
		elif winning_player ==2:
			$LoseLabel.show()
func press_random_button():
	var random_button = randi()%9
	if $Window.get_children()[random_button].disabled :
		press_random_button()
	else:
		$Window.get_children()[random_button].disabled = true
		$Window.get_children()[random_button].text = 'O'

func check_for_winner(game_state):
	if (game_state[0] == game_state[1] and game_state[1] == game_state[2] and 
	(game_state[0]== 'X' or game_state[0]== 'O')):
		if game_state[0] == 'X':
			winning_player = 1
		else: 
			winning_player = 2
	elif (game_state[3] == game_state[4] and game_state[4] == game_state[5] and 
	(game_state[3]== 'X' or game_state[3]== 'O')):
		if game_state[3] == 'X':
			winning_player = 1
		else: 
			winning_player = 2
			
	elif (game_state[6] == game_state[7] and game_state[7] == game_state[8] and 
	(game_state[6]== 'X' or game_state[6]== 'O')):
		if game_state[6] == 'X':
			winning_player = 1
		else: 
			winning_player = 2
			
	elif (game_state[0] == game_state[3] and game_state[3] == game_state[6] and 
	(game_state[0]== 'X' or game_state[0]== 'O')):
		if game_state[0] == 'X':
			winning_player = 1
		else: 
			winning_player = 2
	
	elif (game_state[1] == game_state[4] and game_state[4] == game_state[7] and 
	(game_state[1]== 'X' or game_state[1]== 'O')):
		if game_state[1] == 'X':
			winning_player = 1
		else: 
			winning_player = 2
			
	elif (game_state[2] == game_state[5] and game_state[5] == game_state[8] and 
	(game_state[2]== 'X' or game_state[2]== 'O')):
		if game_state[2] == 'X':
			winning_player = 1
		else: 
			winning_player = 2
			
	elif (game_state[0] == game_state[4] and game_state[4] == game_state[8] and 
	(game_state[0]== 'X' or game_state[0]== 'O')):
		if game_state[0] == 'X':
			winning_player = 1
		else: 
			winning_player = 2
			
	elif (game_state[2] == game_state[4] and game_state[4] == game_state[6] and 
	(game_state[2]== 'X' or game_state[2]== 'O')):
		if game_state[2] == 'X':
			winning_player = 1
		else: 
			winning_player = 2
	return winning_player
