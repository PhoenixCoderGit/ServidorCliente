extends Button


signal set_connect_type

func _ready():
	if OS.get_name() == "OSX":
		$Ip.text = "Mi IP local: " + str(IP.get_local_addresses().append(7)) + " or " + str(IP.get_local_addresses().append(21))
	else:
		$Ip.text = "Mi IP local: " + str(IP.get_local_addresses()[0])

#signal
func direccion():
	Net.initialize_server()
	emit_signal("set_connect_type", true)
	pass # Replace with function body.
