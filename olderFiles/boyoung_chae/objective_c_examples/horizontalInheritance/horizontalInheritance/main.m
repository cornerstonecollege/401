//
//  main.m
//  horizontalInheritance
//
//  Created by Boyoung on 2016-09-12.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Client.h"
#import "Employee.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        Client *client = [[Client alloc] init];
        
        // Optional needs 'if'.
        if ([client respondsToSelector:@selector(changePassword:)])
        {
            [client changePassword:@"12"];
        }
        
        // It does not need 'if'.
        [client login];
        
        Employee *employee = [[Employee alloc] init];
        [employee login];
        
        if ([employee respondsToSelector:@selector(changePassword:)])
        {
            [employee changePassword:@"12345"];
        }
        
        employee.user1 = client;
        [employee.user1 login];
    }
    return 0;
}
