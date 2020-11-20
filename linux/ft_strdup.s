# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vlugand- <vlugand-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/26 15:01:45 by vlugand-          #+#    #+#              #
#    Updated: 2020/06/02 16:44:38 by vlugand-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global ft_strdup
			extern ft_strlen
			extern ft_strcpy
			extern __errno_location
			extern malloc
			section .text
ft_strdup:	
			call ft_strlen
			inc rax
			push rdi
			mov rdi, rax
			call malloc
			cmp rax, 0
			je exit_error
			pop rsi
			mov rdi, rax
			call ft_strcpy
			ret
exit_error: 
			push rax
			call __errno_location
			mov QWORD [rax], 12
			pop rax
			ret			
