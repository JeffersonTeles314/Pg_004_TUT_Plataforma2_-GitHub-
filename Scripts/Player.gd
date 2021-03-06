extends KinematicBody2D

const cima = Vector2(0, -1)
const gravidade = 5
const velocidade = 200
const pulo = -200
var movimento = Vector2()
func _physics_process(delta):
	movimento.x = 0
	movimento.y += gravidade
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			movimento.y = pulo
	if Input.is_action_pressed("ui_right"):
		movimento.x += velocidade
	if Input.is_action_pressed("ui_left"):
		movimento.x += -velocidade
	movimento = move_and_slide(movimento, cima)
	pass
