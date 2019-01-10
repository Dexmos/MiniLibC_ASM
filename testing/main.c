/*                                                                                                                        
** main.c for MiniLibC_ASM                                                                                        
**                                                                                                                         
** Made by florian.marie@epitech.eu                                                                                        
** Login   <florian.marie@epitech.eu>                                                                                      
**                                                                                                                         
** Created on lun. jan. 15:18 2018 by Dexmos                                                                               
*/

#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include "minilibc_asm.h"

//char *test[50];
//memset(test, 0, 50);

static void strcmp_test(void)
{
    printf("my_strcmp for string : test and test = [%i]\n", my_strcmp("test", "test"));
    printf("strcmp for string : test and test = [%i]\n\n", strcmp("test", "test"));

    printf("my_strcmp for string : test2 and test = [%i]\n", my_strcmp("test2", "test"));
    printf("strcmp for string : test2 and test = [%i]\n\n", strcmp("test2", "test"));

    printf("my_strcmp for string : test and tet = [%i]\n", my_strcmp("test", "tet"));
    printf("strcmp for string : test and tet = [%i]\n\n\n", strcmp("test", "tet"));
}

static void write_test(void)
{
    char a = 'a';

    my_write(1, "It's a string_test for my_write.\n", strlen("It's a string_test for my_write.\n"));
    write(1, "It's a string_test for write.\n\n", strlen("It's a string_test for write.\n\n"));

    my_write(1, "There is the char_test for my_write :\n", strlen("There is the char_test for my_write :\n"));
    my_write(1, &a, 1);
    my_write(1, "\n", 1);
    write(1, "There is the char_test for write :\n", strlen("There is the char_test for write :\n"));
    write(1, &a, 1);
    write(1, "\n\n", 2);
}

int main(void)
{
    strcmp_test();
    write_test();
    return (0);
}