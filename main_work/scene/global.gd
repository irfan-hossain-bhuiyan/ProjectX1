extends Node
onready var view_wh:Vector2=get_viewport().size
onready var camera:Camera=get_viewport().get_camera()
var selection
func mouse_to_vec(mouse_x:int)->float:
	return ((mouse_x/view_wh.x)-.5)*sin(deg2rad(camera.fov/2))*camera.translation.z
