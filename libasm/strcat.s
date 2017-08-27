# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    strcat.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sasiedu <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/27 05:35:25 by sasiedu           #+#    #+#              #
#    Updated: 2017/08/27 06:10:08 by sasiedu          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_strcat

_ft_strcat:
	mov  rax, rdi
	cmp  rsi, 0
	je   end
	cmp  rdi, 0
	je   end

dest_end:
	cmp  byte [rdi], 0
	je   copy
	inc  rdi
	jmp  dest_end

copy:
	mov  byte al, [rsi]
	mov  byte [rdi], al
	inc  rdi
	inc  rsi
	cmp  byte [rsi], 0
	jne  copy
	mov  byte [rdi], 0
	
end:
	ret
