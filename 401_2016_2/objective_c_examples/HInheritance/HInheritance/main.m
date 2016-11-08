//
//  main.m
//  HInheritance
//
//  Created by Luiz on 2016-09-12.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Client.h"
#import "Employee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        Client *client = [[Client alloc] init];
        // optional needs 'if'
        if ([client respondsToSelector:@selector(changPassword:)])
        {
            [client changPassword:@"12"];
        }
        
        // it does not need 'if'
        [client login];
        
        Employee *employee = [[Employee alloc] init];
        [employee login];
        if ([employee respondsToSelector:@selector(changPassword:)])
        {
            [employee changPassword:@"123456"];
        }
        
        employee.user1 = client;
        [employee.user1 login];
    }
    return 0;
}
