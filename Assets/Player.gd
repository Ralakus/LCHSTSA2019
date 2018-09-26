extends KinematicBody

var Direction = Vector3()
var Velocity = Vector3()
var Speed = 1000
var Gravity = -9.81


func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(Delta):
	
	Direction = Vector3()
	
	if(Input.is_action_pressed("MoveForward")) :
		Direction.z += 1 * Delta * Speed
	if(Input.is_action_pressed("MoveBackward")) :
		Direction.z -= 1 * Delta * Speed
	if(Input.is_action_pressed("MoveLeft")) :
		Direction.x += 1 * Delta * Speed
	if(Input.is_action_pressed("MoveRight")) :
		Direction.x -= 1 * Delta * Speed
		
	move_and_slide(Direction, Vector3(0,1,0))
		
	pass
