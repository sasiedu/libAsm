# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    bzero.s                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sasiedu <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/26 14:46:29 by sasiedu           #+#    #+#              #
#    Updated: 2017/08/27 05:10:34 by sasiedu          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_bzero

_ft_bzero:
	cmp  rdi, 0
	je   return

loop:
	cmp  rsi, 0
	jle  return
	mov  byte [rdi], 0
	inc  rdi
	dec  rsi
	jmp  loop

return:
	ret
