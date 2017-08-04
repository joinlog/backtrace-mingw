#include <windows.h>

static void
foo()
{
	int *f=NULL;
	*f = 0;
}

static void
bar()
{
	foo();
}

int
main()
{
	LoadLibraryA("backtrace_x64.dll");
	bar();

	return 0;
}
