extends Button

signal set_connect_type

# signal
func unirse():
	if $Ip.text.is_valid_ip_address():
		join()
	else:
		$InvalidoIp.show()
	pass # Replace with function body.
	
	
func join():
	Net.initialize_client($Ip.text)
	emit_signal("set_connect_type", false)
