//
//  main.m
//  ex2
//
//  Created by SG on 2016-09-16.
//  Copyright © 2016 SG. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSString *f = @"String1";
        NSString *s = @"String2";
        NSString *t = @"String3";
        NSString *fo = @"String4";
        NSString *fi = @"String5";
        NSString *si = @"String6";
        
        NSArray *tab = @[f, s, t, fo];
        
        NSLog(@"%@", tab);
        
        NSMutableArray *tab2 = [NSMutableArray arrayWithArray:tab];
        [tab2 addObject: fi];
        [tab2 addObject:si];
        
   
        NSLog(@"%@, %@, %@, %@", tab2[0], tab2[1], tab2[2], tab2[3]);


        
        
        
        
        
    }
    return 0;
}
