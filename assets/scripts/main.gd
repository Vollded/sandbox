extends Node
#inner-classes


#classes
@export var character_to_kill: Character

#getters
var chance := 0.2
var chance_percent: int:
	get:
		return chance * 100
	set(value):
		chance = float(value) / 100.0

#setters
signal health_changed(newhealth)
var healths := 100:
	set(value):
		healths = clamp(value, 0, 100)
		health_changed.emit(healths)
#nodes
@onready var player: Node2D = $Playerski #dollar sign same as "get_node()"

@export var node: Node

#enum
enum Alignment { ALLY, NEUTRAL, ENEMY }
@export var unit_alignment = Alignment.ALLY #defaults to ALLY. or use @export var unit_alignment : Alignment

#########################################################################################
@export var health = 100
const SKIBI = -9.67 #fixed/cant be changed

func skibi():
	print("SKIBI-JUMP!")
	#some more skibi-codes
	
# Called when the node enters the scene tree for the first time.

func skeeebee(skib1: int, skib2: int) -> int:
	var result = skib1 + skib2
	return result
	
func _ready() -> void:
	#classes
	character_to_kill.die()
	
	#getters
	print(chance_percent)
	chance_percent = 40
	print(chance_percent)
	
	#setters
	healths = -150
	
	#signal
	leveled_up.connect(_on_leveled_up) #I think its the same as connecting it through the signals tab?
	
	#node
	print(node.name)
	
	#match (same as switch case in java)
	match unit_alignment:
		Alignment.ALLY:
			print("Hello fren :D")
		Alignment.NEUTRAL:
			print("I come in piece!")
		Alignment.ENEMY:
			print("DIE!")
		_:
			print("who?")
			
	#enum
	if unit_alignment == Alignment.ENEMY:
		print("you're BAD")
	else:
		print("you're skibidi :)")
		
	#dictionary
	var players = {
		"eldezaki": {"Level": 67, "Health": 80},
		"eris":		{"Level": 69, "Health": 100},
		"skibidi": 	{"Level": 1, "Health": 20},
	}
	print("eris's health: " + str(players["eris"]["Health"]))
		
	print(players["eris"])
	players["eldezaki"] = 67
	players["sigma"] = 69
	
	for username in players:
		print(username + ": " + str(players[username]))
	
	#array & loop
	var items: Array[String] = ["Potion", "Feather", "Sigma"]
	items[1] = "skibidi"
	items[0] = "idk"
	items.remove_at(1)
	items.append("sigma skibidii")
	print(items)
	#loop
	var glass := 0.0
	while glass < 0.5:
		glass += randf_range(0.01, 0.2)
		if glass > 0.2:
			break
		print(glass)
	print("the glass is now half skividi!")
	
	for item in items:
		if item.length() > 6: #prints items with more than 6 characters in their name
			print(item)
			
	for n in 8:
		print(n)
		
	#rng
	var number = randi_range(140, 210)
	print(number)
	
	var roll = randf()
	if roll <= 0.8:
		print("UNLUCKY BRUH")
	else:
		print("LUCKY!")
		
	#calling function
	var hasil = skeeebee(6, 7)
	print(hasil)
	pass
	health = 40
	health = 20+30
	health += 20
	health -= 10
	health *= 4
	health /= 2
	print(health)

func _input(event: InputEvent) -> void:
	#this is skibii
	if event.is_action_pressed("skibidi"):
		$Label.modulate = Color.RED
		health -= 20
		print(health)
		
		skibi()
		
		if health <= 0:
			health = 0
			print("DED")
		elif health < 50:
			print("YOU ARE INJURED")
		else:
			print("YOU ARE HEALTHY :D")
		
	if event.is_action_released("skibidi"):
		$Label.modulate = Color.GREEN
		

#button connection (click the green arrow)
var skibii = 0
func _on_button_pressed() -> void:
	skibii += 1
	print("skibidi pressed: " + str(skibii))

#signals
var xp := 0
signal  leveled_up(msg)
func _on_timer_timeout() -> void:
	xp += 5
	print(xp)
	if xp >= 20:
		xp = 0
		leveled_up.emit("wha")

func _on_leveled_up(msg) -> void:
	print(msg)


func _on_health_changed(newhealth: Variant) -> void:
	print(newhealth)
