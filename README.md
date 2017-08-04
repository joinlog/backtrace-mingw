# backtrace-mingw
Automatically exported from code.google.com/p/backtrace-mingw

这个分支只支持生成64位DLL
# 1.如果想自己编译
    feature分支说明,编译环境为win7 x64 + mingw64;

    binutils-2.28.tar中用到libiberty.a,我是用如下命令编译的
    ./configure CCFLAGS="-m64 " CPPFLAGS="-m64 " CXXFLAGS="-m64" CFLAGS="-m64" LDFLAGS=-m64
    我把libiberty.a上传了,所以可以不用编译binutils

    1.首先下载mingw64
    2.修改Makefile_x64中-I/c/mingw-w64/mingw-w64/x86_64-4.9.2-posix-seh-rt_v3-rev1/mingw64/include,  根据mingw64实际位置修改;
    其中用到的64位动态库,又不是mingw64位自带的,我已经上传了,可以直接使用
    3.双击运行C:\mingw-w64\msys\1.0\msys.bat
    4.在运行的msys.bat中,转到backtrace的根目录,使用命令 make -f Makefile_x64编译

# 2.如果想直接使用
    编译好的backtrace.dll和程序运行依赖库libmingwex-0.dll

