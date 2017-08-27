/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sasiedu <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/08/26 14:47:08 by sasiedu           #+#    #+#             */
/*   Updated: 2017/08/27 10:10:37 by sasiedu          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft_asm.h"
#include <stdlib.h>
#include <strings.h>

void	test_bzero();
void	test_strcat();
void	test_isalpha();
void	test_isdigit();
void	test_isalnum();
void	test_isascii();
void	test_isprint();
void	test_toupper();
void	test_tolower();
void	test_puts();
void	test_strlen();
void	test_memset();
void	test_memcpy();
void	test_strdup();

int		main(void)
{
	test_bzero();
	test_strcat();
	test_isalpha();
	test_isdigit();
	test_isalnum();
	test_isascii();
	test_isprint();
	test_toupper();
	test_tolower();
	test_puts();
	test_strlen();
	test_memset();
	test_memcpy();
	test_strdup();
}

void	test_bzero()
{
	char 	*str = NULL;
	char	str1[5] = {'h', 'e', 'l', 'l', 'o'};

	puts("**** Testing ft_bzero ****");
	puts("passing NULL str with size 5");
	ft_bzero(str, 5);
	printf("passing str1 : %s with size 0\n", str1);
	ft_bzero(str1, 0);
	printf("after, str1 : %s\n", str1);
	printf("passing str1 : %s with actual size 5\n", str1);
	ft_bzero(str1, 5);
	printf("after, str1 : %s\n", str1);
}

void	test_strcat()
{
	char	*str3 = (char *)malloc(sizeof(char) * 11);

	puts("**** Testing ft_strcat ****");
	puts("passing NULL src str");
	ft_strcat(NULL, NULL);
	puts("passing NULL dest str");
	puts("running ft_strcat(str3, \"hello\")");
	ft_strcat(str3, "hello");
	printf("after, str3 : %s\n", str3);
	puts("running ft_strcat(str3, \" world\")");
	ft_strcat(str3, " world");
	printf("after, str3 : %s\n", str3);
}

void	test_isalpha()
{
	puts("**** Testing ft_isalpha ****");
	printf("isalpha('k') : %s\n", (ft_isalpha('k') == 0) ? "false" : "true");
	printf("isalpha(' ') : %s\n", (ft_isalpha(' ') == 0) ? "false" : "true");
	printf("isalpha('+') : %s\n", (ft_isalpha('+') == 0) ? "false" : "true");
	printf("isalpha('F') : %s\n", (ft_isalpha('F') == 0) ? "false" : "true");
	printf("isalpha(67) : %s\n", (ft_isalpha(67) == 0) ? "false" : "true");
	printf("isalpha('7') : %s\n", (ft_isalpha('7') == 0) ? "false" : "true");
	printf("isalpha(']') : %s\n", (ft_isalpha(']') == 0) ? "false" : "true");
}

void	test_isdigit()
{
	puts("**** Testing ft_isdigit ****");
	printf("isdigit('k') : %s\n", (ft_isdigit('k') == 0) ? "false" : "true");
	printf("isdigit('4') : %s\n", (ft_isdigit('4') == 0) ? "false" : "true");
	printf("isdigit('+') : %s\n", (ft_isdigit('+') == 0) ? "false" : "true");
	printf("isdigit(53) : %s\n", (ft_isdigit(53) == 0) ? "false" : "true");
	printf("isdigit(67) : %s\n", (ft_isdigit(67) == 0) ? "false" : "true");
	printf("isdigit('7') : %s\n", (ft_isdigit('7') == 0) ? "false" : "true");
	printf("isdigit(']') : %s\n", (ft_isdigit(']') == 0) ? "false" : "true");
}

void	test_isalnum()
{
	puts("**** Testing ft_isalnum ****");
	printf("isalnum('k') : %s\n", (ft_isalnum('k') == 0) ? "false" : "true");
	printf("isalnum(28) : %s\n", (ft_isalnum(28) == 0) ? "false" : "true");
	printf("isalnum('+') : %s\n", (ft_isalnum('+') == 0) ? "false" : "true");
	printf("isalnum(53) : %s\n", (ft_isalnum(53) == 0) ? "false" : "true");
	printf("isalnum(67) : %s\n", (ft_isalnum(67) == 0) ? "false" : "true");
	printf("isalnum('7') : %s\n", (ft_isalnum('7') == 0) ? "false" : "true");
	printf("isalnum(']') : %s\n", (ft_isalnum(']') == 0) ? "false" : "true");
}

void	test_isascii()
{
	puts("**** Testing ft_isascii ****");
	printf("isascii('k') : %s\n", (ft_isascii('k') == 0) ? "false" : "true");
	printf("isascii(128) : %s\n", (ft_isascii(128) == 0) ? "false" : "true");
	printf("isascii('+') : %s\n", (ft_isascii('+') == 0) ? "false" : "true");
	printf("isascii(7) : %s\n", (ft_isascii(7) == 0) ? "false" : "true");
	printf("isascii(67) : %s\n", (ft_isascii(67) == 0) ? "false" : "true");
	printf("isascii('7') : %s\n", (ft_isascii('7') == 0) ? "false" : "true");
	printf("isascii(145) : %s\n", (ft_isascii(145) == 0) ? "false" : "true");
}

void	test_isprint()
{
	puts("**** Testing ft_isprint ****");
	printf("isprint('k') : %s\n", (ft_isprint('k') == 0) ? "false" : "true");
	printf("isprint(128) : %s\n", (ft_isprint(128) == 0) ? "false" : "true");
	printf("isprint('+') : %s\n", (ft_isprint('+') == 0) ? "false" : "true");
	printf("isprint(7) : %s\n", (ft_isprint(7) == 0) ? "false" : "true");
	printf("isprint(0) : %s\n", (ft_isprint(0) == 0) ? "false" : "true");
	printf("isprint('7') : %s\n", (ft_isprint('7') == 0) ? "false" : "true");
	printf("isprint(145) : %s\n", (ft_isprint(145) == 0) ? "false" : "true");
}

void	test_toupper(int c)
{
	puts("**** Testing ft_toupper ****");
	printf("toupper('k') : %c\n", ft_toupper('k'));
	printf("toupper('B') : %c\n", ft_toupper('B'));
	printf("toupper(114) : %c\n", ft_toupper(114));
	printf("toupper('+') : %c\n", ft_toupper('+'));
	printf("toupper(70) : %c\n", ft_toupper(70));
	printf("toupper(6) : %c\n", ft_toupper(6));
	printf("toupper('3') : %c\n", ft_toupper('3'));
}

void	test_tolower()
{
	puts("**** Testing ft_tolower ****");
	printf("tolower('k') : %c\n", ft_tolower('k'));
	printf("tolower('B') : %c\n", ft_tolower('B'));
	printf("tolower(114) : %c\n", ft_tolower(114));
	printf("tolower('+') : %c\n", ft_tolower('+'));
	printf("tolower(70) : %c\n", ft_tolower(70));
	printf("tolower(6) : %c\n", ft_tolower(6));
	printf("tolower('3') : %c\n", ft_tolower('3'));
}

void	test_puts()
{
	puts("**** Testing ft_tolower ****");
	puts("ft_puts(\"\")");
	ft_puts("");
	puts("ft_puts(NULL)");
	ft_puts(NULL);
	puts("ft_puts(\"dog\")");
	ft_puts("dog");
	puts("ft_puts(\"this is a word\\0\")");
	ft_puts("this is a word\0");
	puts("ft_puts(\"this is a newline\\n\")");
	ft_puts("this is a newline \n");
}

void	test_strlen()
{
	puts("**** Testing ft_strlen ****");
	puts("ft_strlen(NULL)");
	printf("%zu\n", ft_strlen(NULL));
	puts("ft_strlen(\"\")");
	printf("%zu\n", ft_strlen(""));
	puts("ft_strlen(\"Hello World!\")");
	printf("%zu\n", ft_strlen("Hello World!"));
	puts("ft_strlen(\"This is a line\\n\")");
	printf("%zu\n", ft_strlen("This is a line\n"));
}

void	test_memset()
{
	char str[13] = {'h', 'e', 'l', 'l', 'o', ' ', 'w', 'o', 'r', 'l', 'd', '!', '\0'};
	puts("**** Testing ft_memset ****");
	printf("str : %s\n", str);
	puts("ft_memset(str, \'z\', 0)");
	puts(ft_memset(str, 'z', 0));
	puts("ft_memset(str, \'p\', 11)");
	puts(ft_memset(str, 'p', 11));
	puts("ft_memset(str, \'c\', 5)");
	puts(ft_memset(str, 'c', 5));
	puts("ft_memset(str, \'\\0\', 12)");
	puts(ft_memset(str, '\0', 12));
	puts("ft_memset(NULL, \'p\', 5)");
	puts(ft_memset(NULL, 'p', 5));
}

void	test_memcpy()
{
	char str[15];

	bzero(str, 15);
	puts("**** Testing ft_memcpy ****");
	puts("ft_memcpy(str, \"hello\", 0)");
	puts(ft_memcpy(str, "hello", 0));
	puts("ft_memcpy(str, \"hello World\", 11)");
	puts(ft_memcpy(str, "hello World", 11));
	puts("ft_memcpy(str, \"Test\", 4)");
	puts(ft_memcpy(str, "Test", 4));
	puts("ft_memcpy(NULL, \"hello\", 0)");
	puts(ft_memcpy(NULL, "hello", 0));
}

void	test_strdup()
{
	puts("**** Testing ft_strdup ****");
	puts("ft_strdup(NULL)");
	puts(ft_strdup(NULL));
	puts("ft_strdup(\"\")");
	puts(ft_strdup(""));
	puts("ft_strdup(\"helloWorld\")");
	puts(ft_strdup("helloWorld"));
	puts("ft_strdup(\"foo bar\")");
	puts(ft_strdup("foo bar"));
}
