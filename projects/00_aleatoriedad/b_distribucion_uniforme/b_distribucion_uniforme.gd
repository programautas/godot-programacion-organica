extends Node2D

@onready var te_muestras: TextEdit = $CanvasLayer/TEMuestras
@onready var pbs_glc: Node = $CanvasLayer/pbs_glc
@onready var lbls_glc: Node = $CanvasLayer/lbls_glc
@onready var pbs_gpc: Node = $CanvasLayer/pbs_gpc
@onready var lbls_gpc: Node = $CanvasLayer/lbls_gpc


var semilla = hash(Time.get_unix_time_from_system())

const a = 1103515245
const c = 12345
const m = 2 ** 31

func generador_lineal_congruencial():
	semilla = (a * semilla + c) % m
	return float(semilla) / m


func rango_enteros(lmin, lmax):
	return floor(generador_lineal_congruencial() * (lmax - lmin + 1) + lmin)


func distribucion_lineal(muestras: int):
	var resultados:= [0,0,0,0,0,0]
	for i in range(muestras):
		var n = rango_enteros(1, 6) - 1
		resultados[n] += 1
	for j in resultados.size():
		(pbs_glc.get_child(j) as ProgressBar).max_value = muestras
		(pbs_glc.get_child(j) as ProgressBar).value = resultados[j]
		(lbls_glc.get_child(j) as Label).text = "%d\n%.2f%%" % [resultados[j], resultados[j] / float(muestras) * 100.0]


func distribucion_permutado(muestras: int):
	var resultados:= [0,0,0,0,0,0]
	for i in range(muestras):
		var n = rango_enteros(1, 6) - 1
		resultados[n] += 1
	for j in resultados.size():
		(pbs_gpc.get_child(j) as ProgressBar).max_value = muestras
		(pbs_gpc.get_child(j) as ProgressBar).value = resultados[j]
		(lbls_gpc.get_child(j) as Label).text = "%d\n%.2f%%" % [resultados[j], resultados[j] / float(muestras) * 100.0]

func _on_button_comparar_pressed() -> void:
	var m = int(te_muestras.text)
	distribucion_lineal(m)
	distribucion_permutado(m)
	
