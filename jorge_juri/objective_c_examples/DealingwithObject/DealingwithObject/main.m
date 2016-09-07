//
//  main.m
//  DealingwithObject
//
//  Created by jjuri2 on 2016-09-06.
//  Copyright © 2016 jjuri2. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

//lg   long decimal
        
        
        
        // Obj-c
        NSNumber *number=@1;
        
        
        
        
        //c number
        int x=3;
        
        printf("");
        
        int sum = x + number.intValue;
        
        NSLog(@"The sum of %@ and i% is %i ",number , x,sum);
    }
    return 0;
}
