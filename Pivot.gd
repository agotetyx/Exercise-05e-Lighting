extends Spatial


export var speed = 15
export var zoom_speed = 1.5
export var zoom_min = 5
export var zoom_max = 15
onready var scene = load("res://Assets/scene.gltf")

func _physics_process(delta):
	#look_at(scene, )
	rotation_degrees.y += delta*speed
	$Camera.translation.z += delta*zoom_speed
	if $Camera.translation.z > zoom_max or $Camera.translation.z < zoom_min:
		zoom_speed *= -1
