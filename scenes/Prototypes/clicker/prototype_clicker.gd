class_name PrototypeClicker
extends Control
## A clicker prototype creating Stardust.


## Reference to the lable displying the current amount of stardust created.
@export var label: Label

## Current amount of Stardust created.
var stardust: int = 0


## Initialise the label at launch
func _ready() -> void:
	update_label_text()


## Create 1 stardust
func create_stardust() -> void:
	stardust += 1
	update_label_text()


## update the text of the label to reflect a change in stardust amount.
func update_label_text() ->void:
	label.text = "stardust : %s" %stardust


## Triggered when the create stardust button is pressed.
func _on_button_pressed() -> void:
	create_stardust()
