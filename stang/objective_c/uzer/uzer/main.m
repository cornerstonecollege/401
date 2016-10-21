//
//  main.m
//  uzer
//
//  Created by SG on 2016-09-08.
//  Copyright © 2016 SG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "user.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        user *uuser = [[user alloc] init];
        [uuser setLogin:@"dbdbkjdbd"];
        [uuser login];
        
        [uuser setEmail:@"dfbjdfbfud@wo.pl"];
        
        uuser.email = @"the email";
        uuser.login = uuser.email;
        
        
        
        
        
        
    }
    return 0;
}
