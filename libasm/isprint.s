# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    isprint.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sasiedu <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/27 07:23:27 by sasiedu           #+#    #+#              #
#    Updated: 2017/08/27 07:27:47 by sasiedu          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_isprint

_ft_isprint:
	mov  rax, 0
	cmp  rdi, 32
	jl   return
	cmp  rdi, 126
	jg   return
	mov  rax, 1

return:
	ret
