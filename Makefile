# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: daeunki2 <daeunki2@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/12 12:03:44 by daeunki2          #+#    #+#              #
#    Updated: 2023/12/12 14:32:02 by daeunki2         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS =  ft_printf.c ft_isformat.c \
	ft_putchar.c \
	ft_puthexa.c \
	ft_putnbr.c \
	ft_putpointer.c \
	ft_putstr.c \
	ft_unsignednbr.c \

OBJS = $(SRCS:.c=.o)

all : $(NAME)

$(NAME) : $(OBJS)

%.o:%.c ft_printf.h
	cc -Wall -Wextra -Werror -c $< -o $@
	ar rc $(NAME) $@

clean :
	rm -rf $(OBJS)

fclean : clean
	rm -rf $(NAME)

test: all
    gcc -Wall -Wextra -Werror -o test_ft_printf test_ft_printf.c libftprintf.a
    ./test_ft_printf

re :
	make fclean
	make all

.PHONY : all clean fclean re
