extends Area2D

var speed: int
var rotation_speed: int
var direction_x: float 

func _ready():
	var rng := RandomNumberGenerator.new()
	
	var path: String = "res://graphic/PNG/Meteors/"+ str(rng.randi_range(1,20)) + ".png"
	$MeteorImg.texture = load(path)
	
	var width = get_viewport().get_visible_rect().size[0]
	var random_x = rng.randi_range(0,width)
	var random_y = rng.randf_range(-100,-50)
	position = Vector2(random_x,random_y)
	
	speed = rng.randi_range(200, 500)
	direction_x = rng.randf_range(-1,1)
	rotation_speed = rng.randi_range(40,100)
	
func _process(delta):
	position += Vector2(direction_x, 1.0) * speed * delta
	rotation_degrees += rotation_speed * delta
func _on_body_entered(_body):
	print('body entered')
