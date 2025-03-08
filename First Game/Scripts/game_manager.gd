extends Node

var Score = 0;

@onready var score_label = $ScoreLabel
@onready var allcoins = $"../Allcoins"


func add_point():
	Score += 1;
	score_label.text = 'You collected ' + str(Score) + ' coins.';
	
	if Score >= 15:
		allcoins.start();


func _on_allcoins_timeout():
	get_tree().change_scene_to_file("res://Scenes/finish.tscn");
