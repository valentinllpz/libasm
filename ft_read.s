# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vlugand- <vlugand-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/25 17:49:14 by vlugand-          #+#    #+#              #
#    Updated: 2020/06/02 16:44:41 by vlugand-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global _ft_read
			extern ___error
			section .text
_ft_read:
			mov rax, 0x2000003
			syscall
			jc exit_error
			ret

exit_error:
			push rax
			call ___error
			pop QWORD [rax]
			mov rax, -1
			ret
