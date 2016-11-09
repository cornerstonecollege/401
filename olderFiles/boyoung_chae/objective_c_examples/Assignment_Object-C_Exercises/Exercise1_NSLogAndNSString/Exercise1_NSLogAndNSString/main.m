//
//  main.m
//  Exercise1_NSLogAndNSString
//
//  Created by Boyoung on 2016-09-14.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        char cString[256];
        
        NSLog(@"=== Exercise 1 ===");
        NSLog(@"Get C string, convert it to NSString and display!");
        NSLog(@"Enter your string: ");
        
        scanf("%s", cString);
        
        NSString *append = @"The String is:";
        NSString *getNSString = [NSString stringWithUTF8String:cString];
        
        NSLog(@"%@", [NSString stringWithFormat:@"%@ %@", append, getNSString]);
    }
    return 0;
}
