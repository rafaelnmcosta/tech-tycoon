extends Control

func _ready():
	$Panel/Timer.start()
	get_node("/root/Game/MainPC/PC").vidas -= 1
	get_node("/root/Game/MainPC/PC").failed_tasks += 1
	get_node("/root/Game/MainPC/PC").sucess = false
	
func _on_timer_timeout():
	get_tree().paused = false
	get_node("/root/Game/SpaceShooter").queue_free()
	get_node("/root/Game/HUD").show()
	get_node("/root/Game/MainPC/PC").show()

