//
//  main.m
//  Objects
//
//  Created by Digby Andrews on 2016-05-11.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CICCCAnimal.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        CICCCAnimal *dog = [[CICCCAnimal alloc]init];
        dog.name = @"Bob";
        dog.type = TA_MAMMAL;
        
        [dog run];
        if (dog.isRunning)
        {
            NSLog(@"%@ is running",dog.name);
        }
        else
        {
            NSLog(@"The Dog is not running");
        }
        
        [dog stopRunning];
        if (dog.isRunning)
        {
            NSLog(@"The Dog is running");
        }
        else
        {
            NSLog(@"The Dog is not running");
        }
    }
    return 0;
}
