extends KinematicBody
#func _input(event):
#	if event is InputEventMouseButton:
#		if event.pressed == true and event.button_index == 1:
#
#			yield(get_tree(),"physics_frame")
#			print(Global.get_object_under_mouse().collider)
func _ready() -> void:
	print("sasdasasa")

func _on_Area_input_event(camera: Node, event: InputEvent, click_position: Vector3, click_normal: Vector3, shape_idx: int) -> void:
	if event is InputEventMouseMotion:
		var dropPlane  = Plane(Vector3(0, 0, 1),0)
		var position3D = dropPlane.intersects_ray(
							 camera.project_ray_origin(get_viewport().get_mouse_position()),
							 camera.project_ray_normal(get_viewport().get_mouse_position()))
		transform.origin.x=Global.mouse_to_vec(event.position.x)
	
