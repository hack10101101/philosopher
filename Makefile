# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kdi-noce <kdi-noce@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/14 09:40:45 by kdi-noce          #+#    #+#              #
#    Updated: 2022/05/23 14:07:12 by kdi-noce         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 		= 	philo
PRINTF_DIR	=	printf
PRINTF		= 	$(PRINTF_DIR)/libftprintf.a
C			= 	clang
CC			=	gcc
CFLAG		= 	-Wall -Wextra -Wextra
RM			= 	rm -rf
SRC			= 	fct_annex.c	\
				philosopher.c

#philo_main.c \
			
#OBJ	= 	$(SRC:.c=.o)

all:		$(NAME)

$(NAME):	$(SRC) $(PRINTF)
#			$(C) $(CFLAG) $(SRC) -o $(NAME)
			$(CC) $(CFLAG) $(SRC) $(PRINTF) -o $(NAME)
		
exec:		./time $(NAME)

$(PRINTF):
			make -C $(PRINTF_DIR)
delet:		
			$(RM) philo.dSYM
			$(RM) .DS_Store

clean:
			make -C $(PRINTF_DIR) clean

fclean:   
			rm -f $(NAME)
			make -C $(PRINTF_DIR) fclean

re:			fclean all
