# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kpawlows <kpawlows@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/20 05:15:37 by kpawlows          #+#    #+#              #
#    Updated: 2023/01/25 19:06:46 by kpawlows         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	get_next_line
CC 		=	gcc
FLAGS	=	-Wall -Werror -Wextra
LINK 	=	$(CC) $(FLAGS)
RM		=	rm -f
SRC 	= 	get_next_line.c \
			get_next_line_utils.c
OBJ		=	$(SRC:.c=.o)

GREEN=\033[0;32m
RED=\033[0;31m
BLUE=\033[0;34m
END=\033[0m

all: $(NAME)

$(NAME):
	@$(CC) $(FLAGS) -c $(SRC)
	@printf "[$(NAME)]$(GREEN) \t .o created $(END)\n"

clean:
	@$(RM) $(OBJ)
	@printf "[$(NAME)]$(GREEN) \t .o removed $(END)\n"

fclean: clean
	@$(RM) $(NAME)
	@printf "[$(NAME)]$(GREEN) \t $(NAME) removed $(END)\n"

re: fclean all
	@printf "[$(NAME)] $(GREEN) \t re complete :) $(END)\n"