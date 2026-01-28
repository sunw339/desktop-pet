extends Node2D

var velocity = Vector2(100, 0)
var speed = 200  # 속도 증가
var max_speed = 300

func _ready():
	# 시작할 때 랜덤 방향
	velocity = Vector2(
		randf_range(-speed, speed),
		randf_range(-speed, speed)
	)

func _process(delta):
	# 위치 이동
	position += velocity * delta
	
	var screen_size = get_viewport_rect().size
	
	# 왼쪽 벽에 부딪히면
	if position.x < 25:
		position.x = 25
		velocity.x = abs(velocity.x)  # 오른쪽으로 튕김
		velocity.y += randf_range(-50, 50)  # 약간 랜덤하게
	
	# 오른쪽 벽에 부딪히면
	if position.x > screen_size.x - 25:
		position.x = screen_size.x - 25
		velocity.x = -abs(velocity.x)  # 왼쪽으로 튕김
		velocity.y += randf_range(-50, 50)
	
	# 위쪽 벽에 부딪히면
	if position.y < 25:
		position.y = 25
		velocity.y = abs(velocity.y)  # 아래로 튕김
		velocity.x += randf_range(-50, 50)
	
	# 아래쪽 벽에 부딪히면
	if position.y > screen_size.y - 25:
		position.y = screen_size.y - 25
		velocity.y = -abs(velocity.y)  # 위로 튕김
		velocity.x += randf_range(-50, 50)
	
	# 속도 제한 (너무 빨라지지 않게)
	velocity = velocity.limit_length(max_speed)
