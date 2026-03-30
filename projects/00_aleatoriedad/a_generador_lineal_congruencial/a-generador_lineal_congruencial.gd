extends Node2D

@onready var label_glc: Label = $CanvasLayer/LabelGLC
@onready var label_enteros: Label = $CanvasLayer/LabelEnteros
@onready var label_semilla_constante: Label = $CanvasLayer/LabelSemillaConstante
@onready var label_semilla_variable: Label = $CanvasLayer/LabelSemillaVariable
@onready var text_edit_semilla_constante: TextEdit = $CanvasLayer/TextEditSemillaConstante
@onready var label_semilla_actual: Label = $CanvasLayer/LabelSemillaActual

var semilla = 123456789

const a = 1103515245
const c = 12345
const m = 2 ** 31

# Xn = (a * Xn-1 + c) % m

func generador_lineal_congruencial():
	semilla = (a * semilla + c) % m
	return float(semilla) / m


func rango_enteros(lmin, lmax):
	return floor(generador_lineal_congruencial() * (lmax - lmin + 1)) + lmin


func _on_button_glc_pressed() -> void:
	var resultado := ""
	for i in range(20):
		resultado += "%.14f\n" % generador_lineal_congruencial()
	label_glc.text = resultado

func _on_button_enteros_pressed() -> void:
	var resultado := ""
	for i in range(20):
		resultado += "%d\n" % rango_enteros(1, 6)
	label_enteros.text = resultado


func _on_button_semilla_constante_pressed() -> void:
	semilla = int(text_edit_semilla_constante.text) % m
	var resultado : = ""
	for i in range(16):
		resultado += "%f\n" % generador_lineal_congruencial()
	label_semilla_constante.text = resultado

func _on_button_semilla_variable_pressed() -> void:
	semilla = int(Time.get_ticks_msec()) % m
	label_semilla_actual.text = str(semilla)
	var resultado : = ""
	for i in range(16):
		resultado += "%f\n" % generador_lineal_congruencial()
	label_semilla_variable.text = resultado
