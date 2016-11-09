//
//  main.m
//  PropertiesModifiers_Person
//
//  Created by Boyoung on 2016-09-08.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        Person *person1 = [[Person alloc] init];
        person1.name = @"CoCo";
        person1.nationality = @"Korea";
        
        Person *person2 = [[Person alloc] init];
        [person2 setName:@"KuKu"];
        [person2 setTheValue:@"Canada"];
        
        Person *person3 = [[Person alloc] init];
        [person3 setName:@"LuLu"];
        person3.nationality = @"China";
        
        NSLog(@"%@", person1);
        NSLog(@"%@", person2);
        NSLog(@"%@", person3);
    }
    return 0;
}
