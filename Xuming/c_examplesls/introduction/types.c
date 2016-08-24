#include <stdio.h>

int main()
{
	char letter = 'A';
	printf("%s\n", letter);

	char str[20];
	printf("write a name\n");
	scanf("%s", str);
	printf("hello %s\n", str);

int main()
{
    int matrix[3][3]={{3,3,3},{2,2,2},{1,1,1}};
    int (*p)[3] = matrix;
    printf("%x\n", matrix);
    printf("%x\n", matrix+1);
    printf("%x\n", p);
    printf("%d\n", sizeof(p));
    printf("%x\n", *p);
    printf("%d\n", sizeof(*p));
    printf("%x\n", **p);
    printf("%x\n", *p+1);
    printf("%d\n", sizeof(*p+1));
    printf("%x\n", *(*p+1));
    return 0;
}


%s = string
%c = characteres
%d = decimal/digit
%i = integer
%f = floating number
%ld = long digit
%lu = unsigned long
%.2f 