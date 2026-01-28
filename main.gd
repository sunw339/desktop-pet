extends Node2D

var pet_scene = preload("res://pet.tscn")

func _ready():
	# 투명 배경 - 이게 가장 중요!
	get_viewport().transparent_bg = true
	
	# 화면 전체 크기
	var screen_size = DisplayServer.screen_get_size()
	get_window().size = screen_size
	get_window().position = Vector2i(0, 0)
	
	# 항상 최상위
	DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_ALWAYS_ON_TOP, true)
	
	# Pet 생성
	for i in range(5):
		var pet = pet_scene.instantiate()
		pet.position = Vector2(
			randf_range(100, screen_size.x - 100),
			randf_range(100, screen_size.y / 2)
		)
		pet.velocity.x = randf_range(-150, 150)
		add_child(pet)
