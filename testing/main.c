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
#include "minilibc_asm.h"

//int my_strcmp(const char *s1, const char *s2);

//char *test[50];
//memset(test, 0, 50);

void strcmp_test()
{
    printf("my_strcmp = [%i]\n", my_strcmp("test", "test"));
    printf("strcmp = [%i]\n", strcmp("test", "test"));
    printf("my_strcmp = [%i]\n", my_strcmp("test2", "test"));
    printf("strcmp = [%i]\n", strcmp("test2", "test"));
    printf("my_strcmp = [%i]\n", my_strcmp("test", "tet"));
    printf("strcmp = [%i]\n", strcmp("test", "tet"));
}

int main(void)
{
    printf("__________TEST FOR STRCMP : __________\n\n");
    strcmp_test();
    printf("\n__________TEST FOR STRCMP END ________\n\n");
    return (0);
}