extends Node2D

onready var taille = get_viewport().size
onready var largeur = taille.x
onready var hauteur = taille.y

func title():
	
	var button = Button.new()
	button.text = "Start"
	button.name = "commencer"
	
	
	var titre = "Copter"
	var label = Label.new()
	label.text = titre
	label.name = "Cop"
	var font = DynamicFont.new()
	var font2 = DynamicFont.new()
	font.font_data = load("res://dafont.otf")
	font2.font_data = load("res://dafont.otf")
	font.size = 150
	font2.size = 70
	
	label.add_font_override("font", font)
	button.add_font_override("font", font2)
	
	button.connect("pressed", self, "_button_pressed")
	
	add_child(label, true)
	add_child(button)


	
	label.set_position(Vector2(1024/4,600/4))
	button.set_position(Vector2(1024/2.5,600/2))
	

func _draw():
	#fond noir
	draw_rect(Rect2(Vector2(0,0),taille),Color(0,0,0))
	
	
func _button_pressed():
	get_tree().change_scene("res://copter.tscn")

func _ready():
	title()
	
	var bla = get_viewport().size 
	print(bla)


func _process(delta):
	var l : Label
	l = get_node("Cop")
	var b : Button
	b = get_node("commencer")
	


	update()
