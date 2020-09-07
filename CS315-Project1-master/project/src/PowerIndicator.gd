extends Label




func _on_PowerSlider_value_changed(value):
	get_parent().get_node("PowerIndicator").text = "Power: " + str(value)
