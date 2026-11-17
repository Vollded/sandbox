class_name Character

extends Node

@export var profession : String
@export var health : int

var chest := Equipment.new()
var legs := Equipment.new()

class Equipment:
	var armor := 10
	var weigth := 5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	chest.armor += 10
	print(chest.armor)
	print(legs.weigth)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func die():
	health = 0
	print(profession + " died.")
