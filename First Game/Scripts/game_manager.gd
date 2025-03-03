extends Node

var Score = 0;

@onready var score_label = $ScoreLabel

func add_point():
	Score += 1;
	score_label.text = 'You collected ' + str(Score) + ' coins.';
