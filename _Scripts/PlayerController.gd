extends CharacterBody2D

const SPEED = 75.0
const JUMP_VELOCITY = -175.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity") * 0.6
var direction = Input.get_axis("ui_left", "ui_right")

func _physics_process(delta):

	InputHandler()

	if not is_on_floor():
		velocity.y += gravity * delta

	direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
		$MaleHead2.flip_h = direction > 0
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

func InputHandler():
	
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY	
	if Input.is_action_just_pressed("ui_focus_next"):
		$Camera2D.enabled = !$Camera2D.enabled
	if Input.is_action_just_pressed("Shift"):
		velocity.x = direction * JUMP_VELOCITY * 5	
		velocity.x = direction * SPEED * 10
