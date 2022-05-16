# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kdi-noce <kdi-noce@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/14 09:40:45 by kdi-noce          #+#    #+#              #
#    Updated: 2022/05/16 10:03:15 by kdi-noce         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 	= 	philo
PRINTF	=	./printf/libftprintf.a
C		= 	clang
CC		=	gcc
CFLAG	= 	-Wall -Wextra -Werror -g3 -fsanitize=address
RM		= 	rm -rf
SRC		= 	philo_main.c \
			fct_annex.c
#OBJ	= 	$(SRC:.c=.o)

all:		$(NAME)

$(NAME):	$(SRC) $(PRINTF)
#			$(C) $(CFLAG) $(SRC) -o $(NAME)
			$(CC) $(CFLAG) $(SRC) $(PRINTF) -o $(NAME)
		
exec:		./time $(NAME)

$(PRINTF):
			make -C printf
delet:		
			$(RM) philo.dSYM
			$(RM) .DS_Store

clean:
			make -C printf clean

fclean:   
			rm -f $(NAME)
			make -C $(PRINTF) fclean

re:			fclean all
