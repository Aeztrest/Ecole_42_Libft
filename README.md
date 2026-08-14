*This project has been created as part of the 42 curriculum by ezakyure.*

# Libft

## Description

Libft is a reusable C library developed as the first 42 curriculum project. It
reimplements selected libc functions and provides additional string, memory,
file-descriptor output, and singly linked-list utilities. The library is built
as `libft.a` and can be linked into later C projects.

## Instructions

Compile the library from the project root:

```sh
make
```

This creates `libft.a`. Include `libft.h` in a program and link the library:

```sh
cc main.c -I. -L. -lft
```

Available Makefile rules are `all`, `clean`, `fclean`, and `re`.

## Library contents

- Character checks and conversions: `ft_isalpha`, `ft_isdigit`,
  `ft_isalnum`, `ft_isascii`, `ft_isprint`, `ft_toupper`, and `ft_tolower`.
- Memory and string functions: `ft_memset`, `ft_bzero`, `ft_memcpy`,
  `ft_memmove`, `ft_memchr`, `ft_memcmp`, `ft_strlen`, `ft_strlcpy`,
  `ft_strlcat`, `ft_strchr`, `ft_strrchr`, `ft_strncmp`, and `ft_strnstr`.
- Allocation and conversion: `ft_atoi`, `ft_calloc`, `ft_strdup`,
  `ft_substr`, `ft_strjoin`, `ft_strtrim`, `ft_split`, and `ft_itoa`.
- String callbacks and output: `ft_strmapi`, `ft_striteri`,
  `ft_putchar_fd`, `ft_putstr_fd`, `ft_putendl_fd`, and `ft_putnbr_fd`.
- Linked-list utilities: `ft_lstnew`, `ft_lstadd_front`, `ft_lstsize`,
  `ft_lstlast`, `ft_lstadd_back`, `ft_lstdelone`, `ft_lstclear`,
  `ft_lstiter`, and `ft_lstmap`.

## Resources

- `man 3` pages for the libc functions reimplemented by this project.
- The C standard library documentation at https://man7.org/linux/man-pages/.
- The project subject supplied by 42.

## AI usage

AI was used to help write this README file. It was also used while coding,
as a last resort for complex errors that could not be resolved through web
searches or the official documentation.
