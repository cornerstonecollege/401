//
//  main.m
//  Ex1
//
//  Created by SG on 2016-09-16.
//  Copyright © 2016 SG. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
        char kolor[10] = {0};
        printf("Enter your favorite color");
        scanf("%s", kolor);
        
        NSString *kkolor = [NSString stringWithUTF8String:kolor];
        
        NSLog(@"sooo your fav color is %@", kkolor);
    
    return 0;
    }
}
