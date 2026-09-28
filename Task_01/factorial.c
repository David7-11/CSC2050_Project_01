#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    //check for jsut one number
    if (argc != 2)
    {
        printf("Usage: %s <number>\n", argv[0]);
        return 1;
    }

    //turn to text
    char *input = argv[1];
    int number = atoi(input);

    
    int factorial = 1;

    //mult all numbs from 1 to number
    for (int i = 1; i <= number; i++)
    {
        factorial = factorial * i;
    }

    printf("%d\n", factorial);

    return 0;
}
