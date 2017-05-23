.PHONY: all clean

all : backtrace.dll test.exe

backtrace.dll : backtrace.c
	gcc -shared -g -Wall -o $@ $^ -lbfd -liberty -limagehlp -lz  -lintl -liconv -static -L/e/mingw/msys/1.0/local/lib -L/e/code2/binutils-2.28/libiberty

test.exe : test.c
	gcc -g -Wall -o $@ $^

clean :
	-del -f backtrace.dll test.exe
