//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	
	/*{"", "~/.local/bin/statusbar/weather",	18000,		5},*/
	
	/*{"", "~/.local/bin/statusbar/volume",	0,		10},*/	
	
	/*{"",	"weather",	18000,	5},*/
	
	/*{"",	"clock",	5,	0},*/
	
	/*{" Mem:", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	30,		0},*/
	
	//*{"🔊 ", "amixer get Master | tail -n1 | sed -r 's/.*\\[(.*)%\\].*/\\1/'", 0, 10},*//
	
    {" ","volume",	0,	10},
		
	/*{"", "~/.local/bin/statusbar/clock",	5,		0},*/
							 
	/*{"", "date '+%a %b %d - %I:%M%p '",					5,		0},*/
	
	{"","date '+%a  %b %d  %R '",					1,		0},
	
	/*{"",	"internet",	5,	4},*/
	
	

    
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
