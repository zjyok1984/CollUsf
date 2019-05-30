#include	<stdio.h>
#include	<string.h>
#include	"collusf.h"

int main(int argc, char* argv[])
{
	if (argc > 1)
		printf("%s\t%s", argv[0], argv[1]);
	else
		printf("%s", argv[0]);

}