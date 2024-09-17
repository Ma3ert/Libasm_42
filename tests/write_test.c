#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

extern ssize_t ft_write(int fd, const void *buf, size_t count);
int main(){
    printf("your write: %ld\n", ft_write(1, "Hello World!\n", 13));
    printf("thier write: %ld\n", write(1, "Hello World!\n", 13));
}