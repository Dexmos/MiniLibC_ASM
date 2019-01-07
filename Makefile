##                                                                                                                         
## Makefile for MiniLibC_ASM                                                                                        
##                                                                                                                         
## Made by florian.marie@epitech.eu                                                                                        
## Login   <florian.marie@epitech.eu>                                                                                      
##                                                                                                                         
## Created on lun. jan. 15:16 2018 by Dexmos                                                                               
##


SRCS	=	src/my_strncmp.asm \
			src/my_strlen.asm \
		   	src/my_strcmp.asm \
		   	src/my_strchr.asm \
		   	src/my_memset.asm \
		   	src/my_strstr.asm \
		   	src/my_strcspn.asm \
		   	src/my_rindex.asm \
		   	src/my_write.asm \
		   	src/my_strcasecmp.asm \
		   	src/my_strpbrk.asm \
		   	src/my_memcpy.asm \
		   	src/my_read.asm

SRCCS	= testing/main.c

CC		= gcc

LD		=  ld

ASM		=  nasm

RM     	=  rm -f

ASMFLAGS	=  -f elf64

CFLAGS	= -W -Werror -Wall -Wextra -g -I./include

OBJS	=	$(SRCS:.asm=.o)

OBJSC	=	$(SRCCS:.c=.o)

NAME	=  libasm.so

TESTER_NAME	= main_for_test

all:	$(NAME) $(TESTER_NAME)

$(NAME):	$(OBJS)
		$(LD) -o $(NAME) -shared $(OBJS)

$(TESTER_NAME):	$(OBJSC)
			$(CC) -o $(TESTER_NAME) $(OBJS) $(OBJSC)

clean:
		$(RM) $(OBJS)
		$(RM) $(OBJSC)

fclean:		clean
		$(RM) $(NAME)
		$(RM) $(TESTER_NAME)

re:		fclean all

%.o : 		%.asm
		$(ASM) $(ASMFLAGS) -o $@ $<
