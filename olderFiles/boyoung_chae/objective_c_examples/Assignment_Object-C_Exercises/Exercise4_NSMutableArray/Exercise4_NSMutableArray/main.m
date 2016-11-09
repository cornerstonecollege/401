//
//  main.m
//  Exercise4_NSMutableArray
//
//  Created by Boyoung on 2016-09-14.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSLog(@"=== Exercise 4 ===");
        NSLog(@"Get undifend number of strings and print all until the user types 'done'!");
        
        NSMutableArray *mutableArray = [[NSMutableArray alloc] init];
        
        while (true)
        {
            char name[256];
            scanf("%s", name);
            
            if (strcmp(name,"done") != 0)
            {
                NSString *getString = [NSString stringWithUTF8String:name];
                [mutableArray addObject:getString];
            }
            
            else if (strcmp(name,"done") == 0)
            {
                break;
            }
        }
        
        NSLog(@"\n** All the names you typed **\n%@ ", mutableArray);
    }
    return 0;
}
