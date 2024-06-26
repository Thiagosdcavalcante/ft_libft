# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tsantana <tsantana@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/12 14:23:04 by tsantana          #+#    #+#              #
#    Updated: 2023/11/08 21:02:17 by tsantana         ###   ########.org.br    #
#                                                                              #
# **************************************************************************** #

#MAKEFILE TEST#

NAME = libft.a

CC = cc

CFLAGS = -Wall -Wextra -Werror

SRCS = ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c\
       ft_isdigit.c ft_isprint.c ft_memchr.c ft_memcmp.c\
       ft_memcpy.c ft_memmove.c ft_memset.c ft_strchr.c\
       ft_strlen.c ft_strncmp.c ft_strrchr.c ft_toupper.c\
       ft_tolower.c ft_strlcpy.c ft_strlcat.c ft_strnstr.c\
	ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c\
	ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c\
	ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c\
	ft_putendl_fd.c ft_putnbr_fd.c 

BSRCS = ft_lstadd_front_bonus.c ft_lstnew_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c \
	ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c

HEADER = libft.h

OBJS = $(SRCS:%.c=%.o)

BOBJS = $(BSRCS:%.c=%.o)

all: $(NAME)

$(NAME): $(OBJS)

%.o: %.c
	@$(CC) $(CFLAGS) -I $(HEADER) -c $< -o $@
	ar rc $(NAME) $@
	
bonus: $(BOBJS)

clean:
	rm -f $(OBJS) $(BOBJS)

fclean: clean
	rm -f $(NAME)
	
re: fclean all

.PHONY: all clean fclean re bonus
