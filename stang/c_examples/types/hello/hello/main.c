#include <stdio.h>
#include <stdbool.h>

int     main()
{
    int     vFirstArg, vSecondArg;
    char    vOperation;
    bool    vFinished;
    
    int przyklad [50];
    int i;
    
    vFinished = false;
    
    while( vFinished != true )
    {
        printf( "What operation do you want to do?\n" );
        scanf( "%c", &vOperation );
        
        if( vOperation == '+' )
        {
            printf( "Enter left argument: " );
            scanf( "%d", &vFirstArg );
            
            printf( "\nEnter right argument: " );
            scanf( "%d", &vSecondArg );
            
            printf( "\n%d + %d = %d\n",vFirstArg, vSecondArg, vFirstArg + vSecondArg );
        }
        
        if (vOperation == '-'){
        
            printf("Enter first number:");
            scanf("%d", &vFirstArg);
            
            printf("Enter secend number:");
            scanf("%d", &vSecondArg);
            
            printf("%d - %d = %d", vFirstArg, vSecondArg, vFirstArg - vSecondArg);
            
        }
        
        if (vOperation == '*'){
        
            printf("Enter first number");
            scanf("%d", &vFirstArg);
            
            printf("Enter second number");
            scanf("%d", &vSecondArg);
            
            printf("%d * %d = %d", vFirstArg, vSecondArg, vFirstArg * vSecondArg );
        
        }
        
               
        
    }
    
    
    return 0;
}