# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    cat.s                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sasiedu <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/09/01 11:40:56 by sasiedu           #+#    #+#              #
#    Updated: 2017/09/01 12:15:16 by sasiedu          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.bss
	buf	resb 20

section	.text
	global	_ft_cat
	extern	_ft_bzero
	extern	_ft_puts

_ft_cat:
	cmp  rdi, 0
	jl   return
	mov  r9, rdi

clear:
	lea  rdi, [rel buf]
	mov  rsi, 20
	call _ft_bzero

read:
	mov  rdi, r9
	lea  rsi, [rel buf]
	mov  rdx, 20
	mov  rax, 0x2000003
	syscall
	jc   return
	cmp  rax, 0
	jle  return
	mov  rdi, 1
	lea  rsi, [rel buf]
	mov  rdx, rax
	mov  rax, 0x2000004
	syscall
	jmp  read

return:
	ret
