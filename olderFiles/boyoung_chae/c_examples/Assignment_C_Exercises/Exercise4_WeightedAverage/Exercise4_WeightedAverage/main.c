//
//  main.c
//  Exercise4_WeightedAverage
//
//  Created by Boyoung on 2016-08-30.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>

double getWeightedAverage(double a, double b, double c);
void getPassResult(double average);
double average;

int main(int argc, const char * argv[])
{
    double a, b, c;
    
    printf("===== Exercise 4 =====\n");
    printf("Enter 3 marks from a student to get the grade.\n");
    printf("* Mark weight: A is 2, B is 3 and C is 5.\n");
    printf("* Three marks(A B C): ");
    
    scanf("%lf %lf %lf", &a, &b, &c);
    getWeightedAverage(a, b, c);

    printf("--> The grade is %f.\n", average);
    getPassResult(average);

    return 0;
}

double getWeightedAverage(double a, double b, double c)
{
    average = (2*a + 3*b + 5*c) / (2+3+5);
    
    return average;
}

void getPassResult(double average)
{
    if (average >= 7)
    {
        printf("--> The student passed! Congratulation!\n");
    }
    
    else
    {
        printf("--> Sorry. The student failed!\n");
    }
}
