//
//  main.m
//  Objects
//
//  Created by CICCC1 on 2016-05-11.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CICCCAnimal.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        CICCCAnimal *dog = [[CICCCAnimal alloc] init];
        dog.name = @"Bob";
        dog.type = TA_MAMMAL;
        [dog run];
        [dog stopRunning];
        
        CICCCAnimal *dog2 = [[CICCCAnimal alloc] init];
        dog2.type = TA_MAMMAL;
        
        NSLog(@"The dog n1 name is : %@", dog.name);
        NSLog(@"The dog n2 name is : %@", dog2.name);
    }
    
    return 0;
}
