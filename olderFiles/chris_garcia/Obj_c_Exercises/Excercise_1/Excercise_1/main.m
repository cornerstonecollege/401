//
//  main.m
//  Excercise_1
//
//  Created by Christian on 2016-09-16.
//  Copyright © 2016 Christian. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char str[40];
        
        scanf("%s", str);
        
        NSString *userWord = [NSString stringWithFormat:@"%s" , str];
        
        NSLog(@"The String is: %@", userWord);
        
        
    }
    return 0;
}
    
