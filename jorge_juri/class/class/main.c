/* Leemos 2 números enteros por pantalla y realizamos la suma, la resta,
 * el producto y la división
 */


#include <stdio.h>
main()
{
    
    char c1;
    int a, b;
    printf("Insert First number: ");
    scanf("%i", &a);
    printf("Insert Secund number: ");
    scanf("%i", &b);
    
    printf("\n Add: %i", suma(a, b));
    printf("\n Rest: %i", resta(a, b));
    printf("\n Multiplication: %i", producto(a, b));
    printf("\n Div: %i", division(a, b));
    

    

    
}



suma(int a, int b)
{
    return(a + b);
}

resta(int a, int b)
{
    return(a - b);
}

producto(int a, int b)
{
    return(a * b);
}

division(int a, int b)
{
    return(a / b);
}