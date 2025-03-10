# This is the brain of the whole operation.
# Let's get this ship going!

CC = cc
CFLAGS = -Wall -Wextra -Werror -I.
RM = rm -rf

SRC_DIR = src
OBJ_DIR = obj

NAME = libft.a

FILES =	ft_isalpha.c	ft_toupper.c	ft_isdigit.c	ft_tolower.c	ft_isalnum.c	ft_strchr.c		\
		ft_isascii.c	ft_strrchr.c	ft_isprint.c	ft_strncmp.c	ft_strlen.c		ft_memchr.c		\
		ft_memset.c		ft_memcmp.c		ft_bzero.c		ft_memcpy.c		ft_strnstr.c	ft_memmove.c	\
		ft_atoi.c		ft_strlcpy.c	ft_strlcat.c	ft_calloc.c		ft_strdup.c		ft_substr.c		\
		ft_strjoin.c	ft_strtrim.c	ft_split.c		ft_itoa.c		ft_strmapi.c	ft_striteri.c	\
		ft_printf.c		get_next_line.c	get_next_line_utils.c			ft_putchar_fd.c	ft_putstr_fd.c	\
		ft_putendl_fd.c					ft_putnbr_fd.c					ft_lstnew_bonus.c				\
		ft_lstadd_front_bonus.c			ft_lstsize_bonus.c				ft_lstlast_bonus.c				\
		ft_lstadd_back_bonus.c			ft_lstdelone_bonus.c			ft_lstclear_bonus.c				\
		ft_lstiter_bonus.c				ft_lstmap_bonus.c												\

OBJECTS = $(addprefix $(OBJ_DIR)/, $(FILES:.c=.o))

all: $(NAME)

$(NAME): $(OBJECTS)
	@echo "compiling libft!!"
	@ar rcs $(NAME) $^
	@echo "Library is ready!!"

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(OBJ_DIR)
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@echo "cleaning libft files!!"
	@$(RM) $(OBJ_DIR)

fclean: clean
	@$(RM) $(NAME)

re: fclean all

help:
	@echo "Available targets:"
	@echo "  make          - Build the main executable"
	@echo "  make clean    - Remove object files"
	@echo "  make fclean   - Remove object files and executables"
	@echo "  make re       - Rebuild everything"

.PHONY: all clean fclean re bonus
