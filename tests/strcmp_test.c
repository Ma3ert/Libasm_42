#include <stdio.h>
#include <string.h>

extern int ft_strcmp(char *dst, char *src);

int main(){
    char *s1 = "Hello World!";
    char *s2 = "goodbye World!";

    printf("from your function: %d\n", ft_strcmp(s1, s2));
    printf("fron their function: %d\n", strcmp(s1, s2));
}