# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vduriez <vduriez@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/09 18:19:19 by vduriez           #+#    #+#              #
#    Updated: 2021/11/09 18:40:10 by vduriez          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
FLAGS = -Wall -Wextra -Werror -g3 -fsanitize=address
NAME_SERVER = server
NAME_CLIENT = client
SRCS_CLIENT	= client.c
SRCS_SERVER = server.c	

OBJ_SERVER = $(SRCS_SERVER:.c=.o)
OBJ_CLIENT = $(SRCS_CLIENT:.c=.o)

all:		$(NAME_SERVER) $(NAME_CLIENT)

$(NAME_SERVER):	$(SRCS_SERVER)
		$(CC) $(FLAGS) $(SRCS_SERVER) -o $(NAME_SERVER)

$(NAME_CLIENT):	$(SRCS_CLIENT)
		$(CC) $(FLAGS) $(SRCS_CLIENT) -o $(NAME_CLIENT)

clean:
		rm -rf $(OBJ_SERVER) $(OBJ_CLIENT)

fclean: clean
		rm -rf $(NAME_CLIENT) $(NAME_SERVER)

re: fclean all

.PHONY : all clean fclean re