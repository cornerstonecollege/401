//
//  HttpRequest.m
//  Exercise6_7_BlockAndCallback
//
//  Created by Boyoung on 2016-09-15.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "HttpRequest.h"

@implementation HttpRequest

- (void) requestWithCallback1:(RequestBlock1)block
{
    NSLog(@"=> The request is done!");
    block();
}

- (void) requestWithCallback2:(NSString *)str andBlock:(RequestBlock2)block
{
    NSLog(@"=> The request is done!");
    block(str);
}

@end
