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

			global _ft_strdup
			extern _ft_strlen
			extern _ft_strcpy
			extern ___error
			extern _malloc
			section .text
_ft_strdup:	
			call _ft_strlen
			inc rax
			push rdi
			mov rdi, rax
			call _malloc
			cmp rax, 0
			je exit_error
			pop rsi
			mov rdi, rax
			call _ft_strcpy
			ret
exit_error: 
			call ___error
			mov QWORD [rax], 12
			mov rax, 0
			ret			
