#include <stdio.h>
#include <string.h>
#include <unistd.h>

extern ssize_t ft_read(int fd, const void *buf, size_t count);
extern int ft_strcmp(char *dst, char *src);
extern char *ft_strcpy(char *dst, char *src);
extern size_t ft_strlen(char *str);
extern ssize_t ft_write(int fd, const void *buf, size_t count);
extern char *ft_strdup(char *str);

int main(){

    // ft_strcmp test
    char *s1 = "Hello World!";
    char *s2 = "goodbye World!";

    printf("from your function: %d\n", ft_strcmp(s1, s2));
    printf("fron their function: %d\n", strcmp(s1, s2));

    // ft_read test
    char buf1[20];
    char buf2[20];
    printf("your read: %ld\n", ft_read(1, buf1, 13));
    printf("their read: %ld\n", read(1, buf2, 13));

    printf("your buffer: %s\n", buf1);
    printf("their buffer: %s\n", buf2);

    // ft_strcpy test
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

    // ft_strlent test
    char str[] = "Hello world!";
    size_t to_test = ft_strlen(str);
    size_t to_check = strlen(str);
    printf("your return: %ld\n", to_test);
    printf("their return: %ld\n", to_check);

    // ft_write test
    printf("your write: %ld\n", ft_write(1, "Hello World!\n", 13));
    printf("their write: %ld\n", write(1, "Hello World!\n", 13));

    // ft_strdup test
    char *original = "hoho teyooo";
    char *their_copy = strdup(original);
    char *your_copy = ft_strdup(original);
    if (your_copy)
        printf("your return: |%s| \n", your_copy);
    else printf("soemthing went wrong\n");
    printf("their return: %s\n", their_copy);
    return 0;
}