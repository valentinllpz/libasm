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

			global ft_write
			extern __errno_location
			section .text
ft_write:	
			mov rax, 1
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
