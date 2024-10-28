MANDATORY_DIR = ./mandatory
OBJECTS_DIR = ./objects

SRCS =  $(MANDATORY_DIR)/ft_strcmp.s $(MANDATORY_DIR)/ft_strcpy.s $(MANDATORY_DIR)/ft_write.s  \
	   $(MANDATORY_DIR)/ft_strlen.s $(MANDATORY_DIR)/ft_read.s $(MANDATORY_DIR)/ft_strdup.s

NAME = libasm.a
TESTS = test
CC = gcc
OBJS = $(SRCS:$(MANDATORY_DIR)/%.s=$(OBJECTS_DIR)/%.o)

ASM = nasm
FLAGS = -f elf64
CFLAGS = -Wextra -Werror -Wall 

$(NAME): $(OBJS)
	ar -rc $(NAME) $(OBJS)
	$(CC) $(CFLAGS) -o $(TESTS) ./tests/main.c -L. -lasm -lc

all: $(NAME)

$(OBJECTS_DIR)/%.o: $(MANDATORY_DIR)/%.s
	$(ASM) $(FLAGS) $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)
	rm -f $(TESTS)

re: fclean all
