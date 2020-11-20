# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vlugand- <vlugand-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/19 14:33:57 by vlugand-          #+#    #+#              #
#    Updated: 2020/06/02 16:44:40 by vlugand-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global ft_strlen
			section .text
ft_strlen:
			mov rax, 0
loop:
			cmp byte [rdi + rax], 0
			je exit
			inc rax
			jmp loop
exit:		
			ret
