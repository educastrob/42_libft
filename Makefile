
NAME = libft.a

SRC = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c \
		ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c \
		ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c \
		ft_calloc.c ft_strdup.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c\

HEADER = libft.h

RM = rm -f

CC = cc

AR = ar -rcs

FLAGS = -Wall -Wextra -Werror

OBJS = $(SRC:.c=.o)

all: $(NAME)

.c.o:
	$(CC) $(FLAGS) -c $< -o $(<:.c=.o) 

$(NAME): $(OBJS) $(HEADER)
	$(AR) $(NAME) $(OBJS) $(HEADER)

bonus: $(HEADER)
	$(AR) $(NAME) $(HEADER)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus
