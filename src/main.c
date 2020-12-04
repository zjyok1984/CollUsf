#include	<stdio.h>
#include	<string.h>
#include	"cJSON.h"
#include	"collusf.h"

/*初始化汇总调用*/
static void ProcInit()
{
	printf("Program init ok!");
	return;
}

/*循环汇总调用*/
static void ProcLoop()
{
	while (1)
	{

	}
	return;
}

int main(int argc, char* argv[])
{
	CommonRun(argc, argv);
	ProcInit();
	ProcLoop();
}