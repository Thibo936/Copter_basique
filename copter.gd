extends Node2D

#Variables générales
#var circle = Vector2(largeur/2,hauteur/2)
const gravity = 0.4
const jump = -5
onready var taille = get_viewport().size
onready var largeur = taille.x
onready var hauteur = taille.y


#Variables de la balle 
export var dim_balle = 20
var taille_balle = Vector2(dim_balle, dim_balle)
var vitesse_balle = 1
onready var balle = Rect2(taille/4,taille_balle)


#variables mur
var vitesse_mur_bord = 8
var taille_mur1 = Vector2(120, 30)
onready var mur1 = Rect2(Vector2(1500,175),taille_mur1)

var taille_mur2 = Vector2(44, 80)
onready var mur2 = Rect2(Vector2(2200,400),taille_mur2)

var taille_mur3 = Vector2(75, 80)
onready var mur3 = Rect2(Vector2(2900,330),taille_mur3)

var taille_mur4 = Vector2(50, 100)
onready var mur4 = Rect2(Vector2(3600,120),taille_mur4)

var taille_mur5 = Vector2(75, 75)
onready var mur5 = Rect2(Vector2(4300,350),taille_mur5)

var taille_mur6 = Vector2(100, 30)
onready var mur6 = Rect2(Vector2(5000,230),taille_mur6)

var taille_mur7 = Vector2(80, 90)
onready var mur7 = Rect2(Vector2(5700,300),taille_mur7)

var taille_mur8 = Vector2(75, 50)
onready var mur8 = Rect2(Vector2(6400,200),taille_mur8)

#haut-bas 1

#var taillegrand = Vector2(800,50)
#var taillemoyen = Vector2(500,50)
#var taillepetit = Vector2(200,50)
#onready var bas1_1 = Rect2(Vector2(1000,515),taillegrand)
#onready var bas1_2 = Rect2(Vector2(1150,465),taillemoyen)
#onready var bas1_3 = Rect2(Vector2(1300,415),taillepetit)

var taillegrand = Vector2(1200,35)
var taillemoyen = Vector2(900,35)
var taillepetit = Vector2(600,35)
onready var bas1_1 = Rect2(Vector2(1000,535),taillegrand)
onready var bas1_2 = Rect2(Vector2(1150,505),taillemoyen)
onready var bas1_3 = Rect2(Vector2(1300,475),taillepetit)

onready var bas2_1 = Rect2(Vector2(3000,535),taillegrand)
onready var bas2_2 = Rect2(Vector2(3150,505),taillemoyen)
onready var bas2_3 = Rect2(Vector2(3300,475),taillepetit)

onready var bas3_1 = Rect2(Vector2(5000,535),taillegrand)
onready var bas3_2 = Rect2(Vector2(5150,505),taillemoyen)
onready var bas3_3 = Rect2(Vector2(5300,475),taillepetit)

onready var bas4_1 = Rect2(Vector2(6500,515),Vector2(1500,50))
onready var bas4_2 = Rect2(Vector2(6650,465),Vector2(1350,50))
onready var bas4_3 = Rect2(Vector2(6800,415),Vector2(1200,50))

onready var haut1_1 = Rect2(Vector2(2000,35),taillegrand)
onready var haut1_2 = Rect2(Vector2(2150,65),taillemoyen)
onready var haut1_3 = Rect2(Vector2(2300,95),taillepetit)

onready var haut2_1 = Rect2(Vector2(4000,35),taillegrand)
onready var haut2_2 = Rect2(Vector2(4150,65),taillemoyen)
onready var haut2_3 = Rect2(Vector2(4300,95),taillepetit)

onready var haut3_1 = Rect2(Vector2(6500,35),Vector2(1500,50))
onready var haut3_2 = Rect2(Vector2(6650,85),Vector2(1350,50))
onready var haut3_3 = Rect2(Vector2(6800,135),Vector2(1200,50))



#bords
var taille_bord1 = Vector2(8000,35)
onready var bord1 = Rect2(Vector2(0,0),taille_bord1)

var taille_bord2 = Vector2(8000,35)
onready var bord2 = Rect2(Vector2(0,565),taille_bord2)

#ligne final
var taille_ligne_fin = Vector2(15, 600)
onready var fin = Rect2(Vector2(8000,0),taille_ligne_fin)


func _draw():
	#fond noir
	draw_rect(Rect2(Vector2(0,0),taille),Color(0,0,0))
	
	
	#Dessine la balle
	#draw_circle(circle, 15, Color(1,1,1))
	draw_rect(balle,Color(1,1,1))
	
	#Dessine mur_1
	draw_rect(mur1,Color(1,1,1))
	draw_rect(mur2,Color(1,1,1))
	draw_rect(mur3,Color(1,1,1))
	draw_rect(mur4,Color(1,1,1))
	draw_rect(mur5,Color(1,1,1))
	draw_rect(mur6,Color(1,1,1))
	draw_rect(mur7,Color(1,1,1))
	draw_rect(mur8,Color(1,1,1))
	
	#haut-bas
	draw_rect(bas1_1, Color(1,1,1))
	draw_rect(bas1_2, Color(1,1,1))
	draw_rect(bas1_3, Color(1,1,1))
	
	draw_rect(bas2_1, Color(1,1,1))
	draw_rect(bas2_2, Color(1,1,1))
	draw_rect(bas2_3, Color(1,1,1))
	
	draw_rect(bas3_1, Color(1,1,1))
	draw_rect(bas3_2, Color(1,1,1))
	draw_rect(bas3_3, Color(1,1,1))
	
	draw_rect(bas4_1, Color(1,1,1))
	draw_rect(bas4_2, Color(1,1,1))
	draw_rect(bas4_3, Color(1,1,1))
	
	draw_rect(haut1_1, Color(1,1,1))
	draw_rect(haut1_2, Color(1,1,1))
	draw_rect(haut1_3, Color(1,1,1))
	
	draw_rect(haut2_1, Color(1,1,1))
	draw_rect(haut2_2, Color(1,1,1))
	draw_rect(haut2_3, Color(1,1,1))
	
	draw_rect(haut3_1, Color(1,1,1))
	draw_rect(haut3_2, Color(1,1,1))
	draw_rect(haut3_3, Color(1,1,1))

	#sol_haut
	draw_rect(bord1,Color(1,1,1))
	draw_rect(bord2,Color(1,1,1))
	
	
	
	#ligne final
	draw_rect(fin,Color(0,1,1))

func labelcopter():
	var go =  "GO!"
	var label = Label.new()
	label.text = go
	add_child(label, true)
	label.rect_size = Vector2(1000,1000)
	
	label.set_position(Vector2(200,200))
	
	label.name = "debut"
func _ready():
	print(taille.x)
	print(taille.y)
	#labelcopter()
func _process(delta):
	#mouvement balle
	#quand la balle respawn sa vitesse augmente
	balle.position += Vector2(0,vitesse_balle)
	if balle.position.y > taille.y or balle.position.y < 0:
		get_tree().reload_current_scene()
		
		
#mouvement mur_1
	mur1.position += Vector2(-vitesse_mur_bord,0)
	mur2.position += Vector2(-vitesse_mur_bord,0)
	mur3.position += Vector2(-vitesse_mur_bord,0)
	mur4.position += Vector2(-vitesse_mur_bord,0)
	mur5.position += Vector2(-vitesse_mur_bord,0)
	mur6.position += Vector2(-vitesse_mur_bord,0)
	mur7.position += Vector2(-vitesse_mur_bord,0)
	mur8.position += Vector2(-vitesse_mur_bord,0)

	#mouvement haut-bas
	bas1_1.position += Vector2(-vitesse_mur_bord,0)
	bas1_2.position += Vector2(-vitesse_mur_bord,0)
	bas1_3.position += Vector2(-vitesse_mur_bord,0)
	
	bas2_1.position += Vector2(-vitesse_mur_bord,0)
	bas2_2.position += Vector2(-vitesse_mur_bord,0)
	bas2_3.position += Vector2(-vitesse_mur_bord,0)
	
	bas3_1.position += Vector2(-vitesse_mur_bord,0)
	bas3_2.position += Vector2(-vitesse_mur_bord,0)
	bas3_3.position += Vector2(-vitesse_mur_bord,0)
	
	bas4_1.position += Vector2(-vitesse_mur_bord,0)
	bas4_2.position += Vector2(-vitesse_mur_bord,0)
	bas4_3.position += Vector2(-vitesse_mur_bord,0)
	
	haut1_1.position += Vector2(-vitesse_mur_bord,0)
	haut1_2.position += Vector2(-vitesse_mur_bord,0)
	haut1_3.position += Vector2(-vitesse_mur_bord,0)
	
	haut2_1.position += Vector2(-vitesse_mur_bord,0)
	haut2_2.position += Vector2(-vitesse_mur_bord,0)
	haut2_3.position += Vector2(-vitesse_mur_bord,0)
	
	haut3_1.position += Vector2(-vitesse_mur_bord,0)
	haut3_2.position += Vector2(-vitesse_mur_bord,0)
	haut3_3.position += Vector2(-vitesse_mur_bord,0)
	#mouvement bord
	bord1.position += Vector2(-vitesse_mur_bord,0)
	bord2.position += Vector2(-vitesse_mur_bord,0)
	fin.position += Vector2(-vitesse_mur_bord,0)
	
	#jump
	vitesse_balle = vitesse_balle + gravity
	if Input.is_action_pressed("ui_up"):
		vitesse_balle = jump
	
		
	#collisions
	if balle.intersects(bord1) or balle.intersects(bord2):
		get_tree().change_scene("res://Lost.tscn")
	if balle.intersects(fin):
		get_tree().change_scene("res://Victory.tscn")
		
	if balle.intersects(bas1_1) or balle.intersects(bas1_2) or balle.intersects(bas1_3):
		get_tree().change_scene("res://Lost.tscn")
	if balle.intersects(bas2_1) or balle.intersects(bas2_2) or balle.intersects(bas2_3):
		get_tree().change_scene("res://Lost.tscn")
	if balle.intersects(bas3_1) or balle.intersects(bas3_2) or balle.intersects(bas3_3):
		get_tree().change_scene("res://Lost.tscn")
	if balle.intersects(bas4_1) or balle.intersects(bas4_2) or balle.intersects(bas4_3):
		get_tree().change_scene("res://Lost.tscn")
	
	if balle.intersects(haut1_1) or balle.intersects(haut1_2) or balle.intersects(haut1_3):
		get_tree().change_scene("res://Lost.tscn")
	if balle.intersects(haut2_1) or balle.intersects(haut2_2) or balle.intersects(haut2_3):
		get_tree().change_scene("res://Lost.tscn")
	if balle.intersects(haut3_1) or balle.intersects(haut3_2) or balle.intersects(haut3_3):
		get_tree().change_scene("res://Lost.tscn")
		
	#collision murs
	if balle.intersects(mur1) or balle.intersects(mur2) or balle.intersects(mur3) or balle.intersects(mur4) or balle.intersects(mur5) or balle.intersects(mur6) or balle.intersects(mur7) or balle.intersects(mur8):
		get_tree().change_scene("res://Lost.tscn")
	#var l : Label
	#l = get_node("score")
	
	#l.position += Vector2(-vitesse_mur_bord,0)
	
	
	#update pour donner le mouvement
	update()
