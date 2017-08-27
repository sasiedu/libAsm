# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    isdigit.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sasiedu <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/27 06:42:40 by sasiedu           #+#    #+#              #
#    Updated: 2017/08/27 06:46:51 by sasiedu          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global	_ft_isdigit

_ft_isdigit:
	mov  rax, 0
	cmp  rdi, 48
	jl   return
	cmp  rdi, 58
	jl   found
	jmp  return

found:
	mov  rax, 1

return:
	ret
