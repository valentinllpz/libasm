# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vlugand- <vlugand-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/20 17:15:26 by vlugand-          #+#    #+#              #
#    Updated: 2020/06/02 16:44:38 by vlugand-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global _ft_strcpy
			section .text

_ft_strcpy:	
			mov rax, rdi
			jmp loop
loop:
			cmp byte [rsi], 0
			movsb
			je exit
			jmp loop

exit:
			ret
			
