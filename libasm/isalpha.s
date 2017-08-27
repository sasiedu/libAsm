# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    isalpha.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sasiedu <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/27 06:12:00 by sasiedu           #+#    #+#              #
#    Updated: 2017/08/27 06:34:18 by sasiedu          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_isalpha

_ft_isalpha:
	mov  rax, 0
	cmp  rdi, 65
	jl   return
	cmp  rdi, 91
	jl   found
	cmp  rdi, 97
	jl   return
	cmp  rdi, 122
	jg   return

found:
	mov  rax, 1

return:
	ret
