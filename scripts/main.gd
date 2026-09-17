extends Node2D
## Pipeline-test: bewijst input (touch), rendering (Polygon2D + tween) en een scene-wissel.

const TAPS_TO_SWITCH := 10

var taps := 0

@onready var orb: Node2D = $Orb
@onready var score_label: Label = $Score


func _ready() -> void:
	_pulse()


func _unhandled_input(event: InputEvent) -> void:
	# Eén vinger: elke tik (of muisklik op desktop) telt.
	if event is InputEventScreenTouch and event.pressed:
		_tap(event.position)
	elif event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		_tap(event.position)


func _tap(pos: Vector2) -> void:
	taps += 1
	score_label.text = str(taps)
	var tween := create_tween().set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	tween.tween_property(orb, "position", pos, 0.25)
	tween.parallel().tween_property(orb, "rotation", orb.rotation + PI / 4, 0.25)
	if taps >= TAPS_TO_SWITCH:
		tween.tween_callback(func(): get_tree().change_scene_to_file("res://scenes/Done.tscn"))


func _pulse() -> void:
	# Ademende ring: bewijst dat de render-loop draait.
	var tween := create_tween().set_loops()
	tween.tween_property(orb, "scale", Vector2(1.12, 1.12), 0.9).set_trans(Tween.TRANS_SINE)
	tween.tween_property(orb, "scale", Vector2(1.0, 1.0), 0.9).set_trans(Tween.TRANS_SINE)
