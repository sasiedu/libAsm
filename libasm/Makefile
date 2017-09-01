# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sasiedu <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/26 14:48:24 by sasiedu           #+#    #+#              #
#    Updated: 2017/09/01 11:41:14 by sasiedu          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftAsm.a

SRC = bzero.s strcat.s isalpha.s isdigit.s isalnum.s isascii.s isprint.s \
	  toupper.s tolower.s puts.s strlen.s memset.s memcpy.s strdup.s \
	  cat.s

BIN = $(SRC:.s=.o)

ASM = nasm

FLAGS = -f macho64

all: $(NAME)

$(NAME): $(BIN)
	@ ar rc $(NAME) $(BIN)
	@ ranlib $(NAME)
	@ echo "libftAsm.a created"

%.o : %.s
	@ $(ASM) $(FLAGS) $^ -o $@

clean:
	@ /bin/rm -rf $(BIN)
	@ echo "libftAsm clean"

fclean: clean
	@ /bin/rm -rf $(NAME)
	@ echo "libftAsm fclean"

re: fclean all
