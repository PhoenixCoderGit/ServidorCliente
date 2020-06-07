extends ColorRect

const CONNECT_TEXT = ["Esperando jugadores...", "Conectando con el servidor..."]
	

#signal
func _set_connect_type(direccion):
	show()
	if direccion:
		$Label.text = CONNECT_TEXT[0]
	else:
		$Label.text = CONNECT_TEXT[1]
	pass # Replace with function body.

