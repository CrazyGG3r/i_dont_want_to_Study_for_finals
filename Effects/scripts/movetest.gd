extends Node2D

@onready var particle = $try
@onready var particle_l1 = $"try/smoke dark"
@onready var particle_l2 = $try/yellow
@onready var particle_l3 = $try/orange
@onready var particle_l4 = $try/smokelight

@onready var midd  = $mid_start
@onready var left = $end_l
@onready var right = $end_r

var max_len = 0

func _ready():
	particle.position = midd.position
	max_len = right.position.x - left.position.x
	
var curr_len = 4
var speed = 100

func _process(delta):
	curr_len += speed * delta
	if curr_len < max_len:
		particle_l1.process_material.emission_box_extents.x = curr_len
		particle_l2.process_material.emission_box_extents.x = curr_len
		particle_l3.process_material.emission_box_extents.x = curr_len
		particle_l4.process_material.emission_box_extents.x = curr_len
 
