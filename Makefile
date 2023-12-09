SRCS = ft_char.c \
	ft_decimal.c \
	ft_hexa.c \
	ft_pointer.c \
	ft_printf.c \
	ft_putchar_fd.c \
	ft_putnbr_fd.c \
	ft_putstr_fd.c \
	ft_string.c \
	ft_unsigned.c \
	ft_getsize.c \
	main.c \
	ft_strlen.c

OBJS = $(SRCS:.c=.o)

NAME = libftprintf.a

RM = rm -f

CC = gcc

MAIN = main.c

OUT = ./a.out

CFLAGS = -Werror -Wextra -Wall

.c.o :
	$(CC) $(CFLAGS) -c $< -o ${<:.c=.o}

all : $(NAME)

$(NAME) : $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean : 
	$(RM) $(OBJS)

fclean : clean
	$(RM) $(NAME)

try : 
	$(CC) $(CFLAGS) $(MAIN)
	$(OUT)

re : fclean all

.PHONY : all clean fclean re
