//
//  main.c
//  Assignments
//
//  Created by younseolocal on 2016-08-29.
//  Copyright © 2016 younseolocal. All rights reserved.
//

#include <stdio.h>


//------------------- No.2 ---------------
//#include <math.h>
//int main()
//{
//    double x1, x2, y1, y2, a, b, result1, result2, d;
//    
//    printf("Enter any two points P1(x1,\ty1) : \n");
//    scanf("%lf %lf", &x1, &y1);
//    printf("Enter any two points P2(x1,\ty2) : \n");
//    scanf("%lf %lf", &x2, &y2);
//    a = (x2 - x1);
//    b = (y2 - y1);
//    result1 = pow(a, 2.0);
//    result2 = pow(b, 2.0);
//    d = sqrt(result1 + result2);
//    
//    printf("%lf\n", d);
//    
//    return 0;
//}

//------------------- No.3 ---------------
//
//#include <math.h>
//
//int main()
//{
//    int a, b, c;
//    int R, S, D;
//    
//    printf("Enter 3 positive numbers : \n");
//    scanf("%i %i %i", &a, &b, &c);
//    
//    R = pow((a + b), 2.0);
//    S = pow((b + c), 2.0);
//    D = (R + S)/2;
//    
//    printf("The result is %i\n", D);
//    
//}

//------------------- No.8 ---------------

//int main()
//{
//    int t1 = 0, t2 = 1, nextT = 0, n;
//    
//    printf("Enter a number that is greater than 0 : \n");
//    scanf("%i", &n);
//    
//    if (n >= 2)
//    {
//        printf("The %i first fibonacci numbers are %i %i ", n, t1, t2);
//        
//        for (int i = 0; i < n -2 ; i++)
//        {
//            nextT = t1 + t2;
//            printf("%i ", nextT);
//            t1 = t2;
//            t2 = nextT;
//            nextT = t1 + t2;
//        }
//        
//    }
//    else if (n == 1)
//    {
//        printf("The %i first fibonacci numbers are %i ", n, t1);
//    }
//    
//    
//    printf("\n");
//    
//    return 0;
//}


//------------------- No.11 ---------------
//typedef char string[20];
//int main()
//{
//    string name1, name2;
//    printf("Enter a names : \n");
//    scanf("%s", name1);
//    printf("Enter another names : \n");
//    scanf("%s", name2);
//
//    printf("The size of %s is : %ld and the size of %s is : %ld.\n", name1, sizeof(&name1), name2, sizeof(&name2));
//    return 0;
//}

//------------------- No.13 ---------------

//#include <ctype.h>
//void Cap(char string[]);
//typedef char string[20];
//
//
//
//int main()
//{
//    string name1;
//    printf("Enter a name : \n");
//    scanf("%s", name1);
//    
//    Cap(name1);
//    printf("%s\n",name1);
//    return 0;
//}
//
//void Cap(char string[])
//{
//    long x = strlen(string);
//    
//    for (int i = 0; i < x ; i++)
//    {
//        string[i]= toupper(string[i]);
//        
//    }
//}


//------------------- No.15 ---------------
typedef char* string;
int main()
{
    string n;
    printf("Enter a number \n");
    scanf("%s",n);

   
}












