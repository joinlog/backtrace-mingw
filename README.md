# backtrace-mingw
Automatically exported from code.google.com/p/backtrace-mingw

# 1.如果想自己编译
feature分支说明,编译环境为win7(64位) + mingw-get-setup完整安装;
编译环境为双击打开E:\mingw\msys\1.0\msys.bat;
需要保证win7环境变量中没有mingw的path,如果有的话编译会失败,建议虚拟机中重装一个win7,或者将系统环境变量中mingw相关去掉,在新加一个用户来编译;

# 2.如果想直接使用
编译好的backtrace.dll和程序运行依赖库libmingwex-0.dll
