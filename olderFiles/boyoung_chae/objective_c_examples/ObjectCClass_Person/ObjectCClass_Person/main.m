//
//  main.m
//  ObjectCClass_Person
//
//  Created by Boyoung on 2016-09-07.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        Person *person1 = [[Person alloc] initName:@"Tom" andAge:15 andNationality:@"Spain"];
        Person *person2 = [[Person alloc] initName:@"Linda" andAge:20 andNationality:@"Japan"];
        Person *person3 = [[Person alloc] initName:@"Poly" andAge:25 andNationality:@"Canada"];
        
        NSLog(@"%@", person1);
        NSLog(@"%@", person2);
        NSLog(@"%@", person3);
        
        Person *person4 = [Person alloc];
        
        char str[50] = {0};
        NSLog(@"Enter the name of person4: ");
        scanf("%s", str);
        
        NSString *getName1 = [NSString stringWithUTF8String:str];
//        NSString *getName2 = [NSString stringWithCString:str encoding:1];
        person4.name = getName1;
        
        
        NSLog(@"Person4 name: %@", person4.name);
    }
    return 0;
}
