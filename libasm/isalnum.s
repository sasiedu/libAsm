# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    isalnum.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sasiedu <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/27 06:55:03 by sasiedu           #+#    #+#              #
#    Updated: 2017/08/27 07:07:45 by sasiedu          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_isalnum
	extern	_ft_isalpha
	extern	_ft_isdigit

_ft_isalnum:
	call _ft_isalpha
	cmp  rax, 0
	jnz  return
	call _ft_isdigit
	cmp  rax, 0
	jnz  return

not_found:
	mov  rax, 0
	ret

return:
	mov  rax, 1
	ret
