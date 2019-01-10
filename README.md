# MiniLibC_ASM

Some basic functions from the stantard C library rewrited in Assembly x86_64.

## Including

* strlen
* strchr
* memset
* memcpy
* strcmp
* strncmp
* strcasecmp
* rindex
* strstr
* strpbrk
* strcspn
* write
* read

## How to compile

A makefile is given to let you compile a shared library named libasm.so.

It will also compile a short C program named main_for_test including examples to show you how to use functions from the lib.

### In your terminal

Just use Makefile command to compile both files :

```
make
```

Use main_for_test :
```
./main_for_test
```