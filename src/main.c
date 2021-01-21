#include	<stdio.h>
#include	<string.h>
#include	<windows.h>
#include	<time.h>
#include	"cJSON.h"
#include	"collusf.h"

/*初始化汇总调用*/
static void ProcInit()
{
	printf("Program init ok!\n");
	return;
}

/*循环汇总调用*/
static void ProcLoop()
{
	static long i = 1;
	unsigned long nowtime;
	static unsigned long lasttime = 0;
	
	while (1)
	{
		i++;
		nowtime = GetTickCount64();
		if ((nowtime - lasttime) > 1000)
		{
			lasttime = nowtime;
			printf("%d\t", i);
			printf("%ld\n", nowtime);
		}
		Sleep(100);
	}
	return;
}

int main(int argc, char* argv[])
{
	CommonRun(argc, argv);
	ProcInit();
	ProcLoop();
}