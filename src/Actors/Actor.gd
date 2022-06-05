extends KinematicBody2D
class_name Actor

export var speed:= Vector2(300.0 , 1000.0);

export var gravity: = 3500.0;

var velocity: = Vector2.ZERO;

# To give movement to the player
func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta;
	velocity.y =  min(speed.y, velocity.y); 
	velocity = move_and_slide(velocity);
	
