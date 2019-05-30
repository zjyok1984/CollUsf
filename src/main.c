#include	<stdio.h>
#include	<string.h>
#include	"collusf.h"

#define	_CRT_SECURE_NO_WARNINGS


int main(int argc, char* argv[])
{
	char Temp[256];
	if (argc > 1)
	{
		printf("%s\t%s\n", argv[0], argv[1]);
		strcpy(Temp, argv[0]);
		strcat(Temp, argv[1]);
		printf("%s\n", Temp);
	}
	else
		printf("%s\n", argv[0]);
}