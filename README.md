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

## How to use

A makefile is given to let you compile a shared library named libasm.so.

If you don't want to use the shared library, the makefile will also compile a short C program incluing some basic functions from the lib.

Just use Makefile command :

```
make
```