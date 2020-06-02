# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vlugand- <vlugand-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/25 14:38:43 by vlugand-          #+#    #+#              #
#    Updated: 2020/06/02 16:44:16 by vlugand-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global _ft_write
			extern ___error
			section .text
_ft_write:	
			mov rax, 0x2000004
			syscall
			jc exit_error
			ret

exit_error:
			push rax
			call ___error
			pop QWORD [rax]
			mov rax, -1
			ret
