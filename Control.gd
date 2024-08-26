extends Control

@onready var timer = $timer_cont as Timer
@onready var item_contador = $MarginContainer/HBoxContainer/item_contador as Label
@onready var timer_cont = $MarginContainer/HBoxContainer2/timer_count as Label


signal tempo_acabou

var minutos = 0
var segundos = 0

@export_range(0,2) var min_padro = 1
@export_range(0,2) var seg_padro = 0


func _ready():
		item_contador.text = str("%03d" % GlobalScript.pontos) 
		timer_cont.text = str("%02d" % min_padro) + ":" + str("%02d" % seg_padro)
	
		minutos = min_padro
		segundos = seg_padro
	
	
func _process(_delta):
		item_contador.text = str("%03d" % GlobalScript.pontos)
		if minutos == 0 && segundos == 0:
			emit_signal("tempo_acabou")
		
func _on_timer_timeout(): 
	if segundos== 0:
		if minutos>0:
			minutos -=1
			segundos= 60
			
	segundos-=1
	
	timer_cont.text=str("%02d" % minutos) + ":" + str("%02d" % segundos)




	
