#include <stdio.h>
#include <string.h>

extern char *ft_strcpy(char *dst, char *src);
int main(){
    char *src1 = "Hello World!";
    char dst1[20] = "goodbye World!";

    char *src2 = "Hello World!";
    char dst2[20] = "goodbye World!";

    printf("frist dst before: %s\n", dst1);
    printf("second dst before: %s\n", dst2);

    ft_strcpy(dst1, src1);
    strcpy(dst2, src2);
    printf("frist dst after: %s\n", dst1);
    printf("second dst after: %s\n", dst2);
}