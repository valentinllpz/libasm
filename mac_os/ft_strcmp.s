# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vlugand- <vlugand-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/24 16:23:59 by vlugand-          #+#    #+#              #
#    Updated: 2020/06/02 16:44:37 by vlugand-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global _ft_strcmp
			section .text
_ft_strcmp: 
			cmp byte [rdi], 0
			je end
		;	cmp byte [rsi], 0
		;	je end
			cmpsb
			je _ft_strcmp
			dec rdi
			dec rsi
end:
			movzx rax, byte [rdi]
			movzx rcx, byte [rsi]
			sub rax, rcx
			ret

