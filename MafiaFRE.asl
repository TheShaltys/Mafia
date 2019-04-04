//Autosplitter made by TheShalty
//Works on Mafia 1.0

state("Game")
{
	byte inMission : 0x255360, 0x460, 0xB4, 0xDC;
	byte isLoading : 0x25115C, 0x7C;
	byte inGame : 0x0CB1F8, 0x4E0;
}

startup
{
	//refreshRate = 1;
}

start 
{
	return (current.inMission == 0 && old.inMission != 1 && current.inGame == 1 && old.inGame == 0);
}

split
{
	return (old.inMission == 1 && current.inMission == 0 && current.isLoading == 0);
}