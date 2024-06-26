class_name PrototypeGenerator
extends Control
## Generator Prototype creating stardust every seconds.

## reference to the labels
@export var label : Label

##Reference to the Button
@export var button: Button

## Reference to the Timer
@export var timer: Timer


## Current amount of stardust in storage
var stardust : int = 0

## Initialise the label
func _ready() -> void:
	update_label_text()

## Creates stardust and store it
func create_stardust() -> void:
	stardust +=1
	update_label_text()
	
	
## Updates the label text to match the current amount of stardust in storage
func update_label_text() ->void:
	label.text = "Stardust : %s" %stardust

## Start the tumer and disable the button
func begin_generating_stardust() -> void:
	timer.start()
	button.disabled = true

## Triggered when the "begin generating" button is pressed
func _on_button_pressed()-> void:
	begin_generating_stardust()

## Triggered when the timer times out.
func _on_timer_timeout() -> void:
	create_stardust()
