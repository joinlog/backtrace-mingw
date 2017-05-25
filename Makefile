.PHONY: all clean

all : backtrace.dll test.exe

backtrace.dll : backtrace.c
	gcc -shared -g -Wall -o $@ $^ -lbfd -liberty -limagehlp -lz  -lintl -liconv -static

test.exe : test.c
	gcc -g -Wall -o $@ $^

clean :
	-del -f backtrace.dll test.exe
