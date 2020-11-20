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

			global ft_read
			extern __errno_location
			section .text
ft_read:
			mov rax, 0
			syscall
			cmp rax,0
			jl exit_error
			ret

exit_error:
			neg rax
			push rax
			call __errno_location
			pop QWORD [rax]
			mov rax, -1
			ret
