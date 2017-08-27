# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    strdup.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sasiedu <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/27 10:11:04 by sasiedu           #+#    #+#              #
#    Updated: 2017/08/27 11:21:25 by sasiedu          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_strdup
	extern	_malloc
	extern	_ft_strlen
	extern	_ft_memcpy
	extern	_ft_bzero

_ft_strdup:
	cmp  rdi, 0
	jz   no_copy
	mov  rbx, rdi ;save src str
	call _ft_strlen
	cmp  rax, 0
	jz   no_copy
	mov  r8, rax ;save strlen
	mov  rdi, rax
	call _malloc
	cmp  rax, 0
	jz   no_copy
	mov  rdi, rax
	mov  rsi, r8
	call _ft_bzero
	mov  rsi, rbx
	mov  rdx, r8
	call _ft_memcpy
	jmp  return

no_copy:
	mov  rax, 0

return:
	ret
