extends Node2D


func _ready():
	Net.set_ids()
	create_players()

func create_players():
	for id in Net.peer_ids:
		create_player(id)
	create_player(Net.net_id)

func create_player(id):
	print("jugador id " + str(id) + " inicido")
	var p = preload("res://escenas/Jugador.tscn").instance()
	add_child(p)
	p.initialize(id)
