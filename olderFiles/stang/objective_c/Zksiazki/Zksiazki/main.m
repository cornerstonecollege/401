//
//  main.m
//  Zksiazki
//
//  Created by SG on 2016-09-06.
//  Copyright © 2016 SG. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *currentTime = [NSDate date];
        NSLog (@"currentTime's value is %p", currentTime);
        
        NSDate *startTime = currentTime;
        
        sleep(2);
        
        currentTime = [NSDate date];
        NSLog(@"currentTime's value is now %@", currentTime);
        NSLog(@"orginalTime's value was %p", startTime);
        
        currentTime = nil;
        NSLog(@"currentTime's value is %p", currentTime);
        
        
        NSString *lament = @"WhyMe";
        NSString *slogan = @"I \u2661 NY";
        
        if ([slogan isEqualToString:lament]){
            NSLog(@"%@ and %@ are equal", slogan, lament);
        }
        
        NSString *angrytext = @"That makes me so mad";
        NSString *reallyAngryText = [angrytext uppercaseString];
        
        NSLog(@"%@",reallyAngryText);
        
        
        NSString *listOfNames = @"....";
        NSString *name = @"Ward";
        NSRange match = [listOfNames rangeOfString: name];
        
        if (match.location == NSNotFound){
            NSLog("Not found");
        }
        
        else {
        
        }

    
    }
    return 0;
}
