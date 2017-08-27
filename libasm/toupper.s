# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    toupper.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sasiedu <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/27 07:34:32 by sasiedu           #+#    #+#              #
#    Updated: 2017/08/27 07:45:15 by sasiedu          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_toupper

_ft_toupper:
	mov  rax, rdi
	cmp  rdi, 97
	jl   return
	cmp  rdi, 122
	jg   return
	sub  rax, 32

return:
	ret
