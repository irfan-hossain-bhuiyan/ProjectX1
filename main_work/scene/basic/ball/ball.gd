extends KinematicBody
var gravity=Vector3(0,-9.8,0)
var velocity:Vector3=Vector3(0,0,0)
onready var ball_mesh:Spatial=get_node("ball")

func simulate():
	transform.origin+=velocity;
	velocity+=gravity;
func sim_coll():
	var coll=move_and_collide(velocity)
	if coll.is_in_group("spring"):
		print("dsdsd")
