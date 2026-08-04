# Libft

This project is part of the new 42 curriculum and marks the first step into building solid foundations in C.

This repository focuses on reimplementing selected libc functions from scratch and turning them into a reusable library: `libft.a`.

## Why this project matters

Libft is one of those projects that makes the hidden mechanics of C feel visible. It helps you practice:

- memory management and pointer logic
- string handling in a low-level context
- writing reusable and well-structured functions
- keeping code clean, readable, and intentional

In short, this is the kind of project that becomes the base for everything that comes after it.

## What is included

This library covers:

- character checks and conversions
- memory operations
- string manipulation
- conversion, splitting, and trimming utilities
- file descriptor output functions
- singly linked list helpers

## Build

To compile the library:

```sh
make
```

This creates the archive `libft.a`.

## Usage

To use it in a program:

```sh
cc main.c -I. -L. -lft
```

## Note

This repo may look serious, but the real charm is that it stays simple, practical, and honest. It has the spirit of 42: a little patience, a little confusion, and a lot of satisfaction when things finally click.
