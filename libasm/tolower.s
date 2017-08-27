# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    tolower.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sasiedu <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/27 07:54:00 by sasiedu           #+#    #+#              #
#    Updated: 2017/08/27 08:02:51 by sasiedu          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_tolower

_ft_tolower:
	mov  rax, rdi
	cmp  rdi, 65
	jl   return
	cmp  rdi, 90
	jg   return
	add  rax, 32

return:
	ret
