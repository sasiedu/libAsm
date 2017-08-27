# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    puts.s                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sasiedu <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/27 08:12:09 by sasiedu           #+#    #+#              #
#    Updated: 2017/08/27 08:47:45 by sasiedu          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.data
	newline: db "", 0xA
	str:     db "(null)", 0xA

section	.text
	global	_ft_puts

_ft_puts:
	cmp  rdi, 0
	jz   null
	push rdi
	mov  rcx, 0
	jmp  get_length

null:
	mov  rdi, 1
	lea  rsi, [rel str]
	mov  rdx, 6
	mov  rax, 0x2000004
	syscall
	jmp  return

get_length:
	cmp  byte [rdi], 0
	jz   print
	inc  rdi
	inc  rcx
	jmp get_length

print:
	mov  rdi, 1
	pop  rsi
	mov  rdx, rcx
	mov  rax, 0x2000004
	syscall

return:
	mov  rdi, 1
	lea  rsi, [rel newline]
	mov  rdx, 1
	mov  rax, 0x2000004
	syscall
	ret
