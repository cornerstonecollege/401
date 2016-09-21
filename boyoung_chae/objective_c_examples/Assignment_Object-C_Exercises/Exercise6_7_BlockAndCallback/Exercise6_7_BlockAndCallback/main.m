//
//  main.m
//  Exercise6_7_BlockAndCallback
//
//  Created by Boyoung on 2016-09-15.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpRequest.h"

typedef void (^VoidBlock)(void);

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSLog(@"=== Exercise 6 & 7 ===");
        NSLog(@"Call a fake Http request!");
        NSLog(@"1. Excute the block by Void method!");
        
        HttpRequest *httpRequest = [[HttpRequest alloc] init];
 
        
        // 1) When the parameter is Void(Callbakc()).
        VoidBlock Callback;
        
        Callback = ^void(void)
        {
            NSLog(@"=> Callback() excuted the block!");
        };
        
        [httpRequest requestWithCallback1:Callback];

        
        // 2) When the parameter is NSString.
        NSLog(@"2. Excute the block by NSString!");
        NSLog(@"Type 'Hey' to call a request.");
        
        char input[256];
        
        scanf("%s", input);
        
        if (strcmp(input, "Hey") == 0)
        {
            [httpRequest requestWithCallback2:[NSString stringWithUTF8String:input] andBlock:^void(NSString *str)
            {
                NSLog(@"%@ excuted the block!", str);
            }];
        }
    }
    return 0;
}
