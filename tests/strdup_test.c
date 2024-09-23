#include <stdio.h>
#include <string.h>

extern char *ft_strdup(char *str);

int main() {
    char *original = "hoho teyooo";
    char *their_copy = strdup(original);
    char *your_copy = ft_strdup(original);
    printf("your return: %s\n", your_copy);
    printf("their return: %s\n", their_copy);
    return 0;
}