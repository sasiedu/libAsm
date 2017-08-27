# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    memcpy.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sasiedu <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/27 09:58:25 by sasiedu           #+#    #+#              #
#    Updated: 2017/08/27 10:05:22 by sasiedu          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_memcpy

_ft_memcpy:
	mov  rax, rdi
	cmp  rdi, 0
	jz   return

copy:
	cmp  rdx, 0
	jz   return
	mov  bl, byte [rsi]
	mov  byte [rdi], bl
	inc  rdi
	inc  rsi
	dec  rdx
	jmp  copy

return:
	ret
