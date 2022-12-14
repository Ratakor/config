//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/													/*Update Interval*/	/*Update Signal*/
	//30 update interval battery
	{" ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",   	10,					0},
	{" ", "ip link | awk '/wlan0/ { print $9 }'",							5,					0},
	//{ "",			"netlan",		1,			0 },	// n -> Lan network
	{" ", "acpi | awk '/0:/ { print $3\" \"$4 }' | sed s/,//g",			5,                  0},
	//{" ", "/home/ratakor/suckless/dwmblocks/volume",						0,					10},
	{" ", "/home/ratakor/suckless/dwmblocks/volume",						1,					0},
	{" ", "date '+%A %d %B %Y'",											3600,				0},
	{" ", "date '+%H:%M:%S'",												1,					0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
