//
//  main.m
//  Class 12
//
//  Created by Dennis Pham on 2016-05-11.
//  Copyright © 2016 Dennis Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CICCCAnimal.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        CICCCAnimal *dog = [[CICCCAnimal alloc]init];
        dog.name = @"Bob";
        dog.type = TA_MAMMAL;
        [dog run];
        
        if(dog.isRunning)
        {
            NSLog(@"%@ is running", dog.name);
        }
        else
            NSLog(@"%@ is not running",dog.name);
        [dog stopRunning];
        
        if(dog.isRunning)
        {
            NSLog(@"%@ is running", dog.name);
        }
        else
            NSLog(@"%@ is not running",dog.name);
        
        
    }
    return 0;
}
