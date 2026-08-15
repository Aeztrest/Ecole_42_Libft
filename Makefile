NAME		=	libft.a

CC			=	cc
CFLAGS		=	-Wall -Wextra -Werror
AR			=	ar rcs
RM			=	rm -f

HEADER		=	libft.h

SRC			=	ft_atoi.c \
				ft_bzero.c \
				ft_calloc.c \
				ft_isalnum.c \
				ft_isalpha.c \
				ft_isascii.c \
				ft_isdigit.c \
				ft_isprint.c \
				ft_itoa.c \
				ft_memchr.c \
				ft_memcmp.c \
				ft_memcpy.c \
				ft_memmove.c \
				ft_memset.c \
				ft_putchar_fd.c \
				ft_putendl_fd.c \
				ft_putnbr_fd.c \
				ft_putstr_fd.c \
				ft_split.c \
				ft_strchr.c \
				ft_strdup.c \
				ft_striteri.c \
				ft_strjoin.c \
				ft_strlcat.c \
				ft_strlcpy.c \
				ft_strlen.c \
				ft_strmapi.c \
				ft_strncmp.c \
				ft_strnstr.c \
				ft_strrchr.c \
				ft_strtrim.c \
				ft_substr.c \
				ft_tolower.c \
				ft_toupper.c \
				ft_lstnew.c \
				ft_lstadd_front.c \
				ft_lstsize.c \
				ft_lstlast.c \
				ft_lstadd_back.c \
				ft_lstdelone.c \
				ft_lstclear.c \
				ft_lstiter.c \
				ft_lstmap.c

OBJ			=	$(SRC:.c=.o)

PROGRESS	=	.make_progress
TOTAL		=	$(words $(SRC))

RESET		=	\033[0m
BOLD		=	\033[1m
DIM			=	\033[2m
RED			=	\033[0;31m
GREEN		=	\033[0;32m
YELLOW		=	\033[0;33m
BLUE		=	\033[0;34m
MAGENTA		=	\033[0;35m
CYAN		=	\033[0;36m

all: banner $(NAME) success

banner:
	@clear 2>/dev/null || true
	@rm -f $(PROGRESS)
	@echo "$(MAGENTA)$(BOLD)"
	@echo "   ╔═══════════════════════════════════════════════╗"
	@echo "   ║                                                 ║"
	@echo "   ║   ██╗     ██╗██████╗ ███████╗████████╗          ║"
	@echo "   ║   ██║     ██║██╔══██╗██╔════╝╚══██╔══╝          ║"
	@echo "   ║   ██║     ██║██████╔╝█████╗     ██║             ║"
	@echo "   ║   ██║     ██║██╔══██╗██╔══╝     ██║             ║"
	@echo "   ║   ███████╗██║██████╔╝██║        ██║             ║"
	@echo "   ║   ╚══════╝╚═╝╚═════╝ ╚═╝        ╚═╝             ║"
	@echo "   ║                                                 ║"
	@echo "   ║              ~ Aez' was here! ~                 ║"
	@echo "   ║                                                 ║"
	@echo "   ╚═══════════════════════════════════════════════╝"
	@echo "$(RESET)"

%.o: %.c $(HEADER)
	@n=$$(( $$(cat $(PROGRESS) 2>/dev/null || echo 0) + 1 )); \
	echo $$n > $(PROGRESS); \
	percent=$$(( n * 100 / $(TOTAL) )); \
	printf "$(CYAN)   [%3d%%]$(RESET) $(YELLOW)⚙  compiling$(RESET) %-28s\r" "$$percent" "$<"; \
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME): $(OBJ)
	@echo ""
	@printf "$(BLUE)   📦 archiving objects into %s...$(RESET)\n" "$(NAME)"
	@$(AR) $(NAME) $(OBJ)
	@rm -f $(PROGRESS)

success:
	@echo "$(GREEN)$(BOLD)"
	@echo "   ✔  $(NAME) forged from $(TOTAL) functions. Ready to link."
	@echo "$(RESET)"

clean:
	@echo "$(RED)   🧹 sweeping away object files...$(RESET)"
	@$(RM) $(OBJ) $(PROGRESS)

fclean: clean
	@echo "$(RED)   💥 obliterating $(NAME)...$(RESET)"
	@$(RM) $(NAME)

re: fclean all

.PHONY: all banner success clean fclean re
