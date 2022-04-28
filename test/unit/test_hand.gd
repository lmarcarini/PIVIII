extends "res://addons/gut/test.gd"

class TestHand:
	extends "res://addons/gut/test.gd"
	
	var Hand = load("res://entities/hand/Hand.tscn")
	var HandScript = load("res://entities/hand/hand_script.gd")
	var _hand = null

	func before_each():
		_hand = Hand.instance()

	func test_hand_movement():
		var initial_x = _hand.position
		var initial_y = 1
		_hand.move_hand()
		assert_ne(initial_x,1,"hand should move in x axis")
		assert_ne(initial_x,1,"hand should move in x axis")
