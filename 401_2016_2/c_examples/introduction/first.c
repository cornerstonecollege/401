#include <stdio.h>
#include <stdlib.h>

int main()
{
	char name[20], s[50];
	printf("Type something:\n");
	scanf("%s", name);
	snprintf(s, 50, "say Hello World %s", name);
	system(s);
	return 0;
}		