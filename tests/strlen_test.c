#include <stdio.h>
#include <string.h>

extern size_t ft_strlen(char *str);

int main() {
    char str[] = "Hello world!";
    size_t to_test = ft_strlen(str);
    size_t to_check = strlen(str);
    printf("your return: %ld\n", to_test);
    printf("their return: %ld\n", to_check);
    return 0;
}