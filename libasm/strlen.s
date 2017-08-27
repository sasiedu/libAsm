# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    strlen.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sasiedu <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/27 09:06:39 by sasiedu           #+#    #+#              #
#    Updated: 2017/08/27 09:13:02 by sasiedu          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_strlen

_ft_strlen:
	mov  rax, 0
	cmp  rdi, 0
	jz   return

count:
	cmp  byte [rdi], 0
	jz   return
	inc  rax
	inc  rdi
	jmp  count

return:
	ret
