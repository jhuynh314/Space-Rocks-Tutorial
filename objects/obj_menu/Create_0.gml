if(global.currentScore > global.highScore) {
	global.highScore = global.currentScore;
	
	//save high score
	highscore_save();
}