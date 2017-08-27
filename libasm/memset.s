# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    memset.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sasiedu <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/27 09:28:14 by sasiedu           #+#    #+#              #
#    Updated: 2017/08/27 09:52:02 by sasiedu          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_memset

_ft_memset:
	mov  rax, rdi
	cmp  rdi, 0
	jz   return

loop:
	cmp  rdx, 0
	jz   return
	mov  byte [rdi], sil
	inc  rdi
	dec  rdx
	jmp  loop

return:
	ret
