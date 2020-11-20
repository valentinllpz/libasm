# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vlugand- <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/26 17:32:37 by vlugand-          #+#    #+#              #
#    Updated: 2020/05/27 15:13:36 by vlugand-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 		= libasm.a

ASM			= nasm

NFLAGS		= -felf64

SRCS	 	= ft_strlen.s\
			  ft_strcpy.s\
			  ft_strcmp.s\
			  ft_write.s\
			  ft_read.s\
			  ft_strdup.s

OBJS		= ${SRCS:.s=.o}

%.o: 		%.s
			${ASM} ${NFLAGS} $< -o $@

${NAME}:		${OBJS}
				ar rcs ${NAME} ${OBJS}

all:	${NAME}

clean:
		rm -f ${OBJS}

fclean: clean
		rm -f ${NAME}

re: fclean all

.PHONY: all clean fclean re
