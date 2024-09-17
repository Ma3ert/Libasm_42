#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

extern ssize_t ft_read(int fd, const void *buf, size_t count);
int main(){
    char buf1[20];
    char buf2[20];
    printf("your read: %ld\n", ft_read(1, buf1, 13));
    printf("their read: %ld\n", read(1, buf2, 13));

    printf("your buffer: %s\n", buf1);
    printf("their buffer: %s\n", buf2);
    return 0;
}