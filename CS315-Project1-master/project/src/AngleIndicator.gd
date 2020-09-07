extends Label



func _on_AngleSlider_value_changed(value):
	get_parent().get_node("AngleIndicator").text = "Angle: " + str(value)
	
