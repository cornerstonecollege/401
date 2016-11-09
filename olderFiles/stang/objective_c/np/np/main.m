//
//  main.m
//  np
//
//  Created by SG on 2016-09-07.
//  Copyright © 2016 SG. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSDate *tommorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        
        NSArray *dateList = @[now, tommorrow, yesterday];
        
        /*NSLog (@"The first position in array is %@", dateList[0]);
        NSLog (@"The second position in array is %@", dateList[1]);
        NSLog(@"The third position in array is %@", dateList[2]);
        
        NSLog (@"There are %lu dates", [dateList count]);*/
        
        NSUInteger dateCount = [dateList count];
        
      /*  for (int i = 0; i < dateCount; i++){
            NSDate *d = dateList[i];
            NSLog(@"Here is a date: %@", d);
            
        } */
        
        for (NSDate *d in dateList){
            NSLog(@"2Here is a date: %@", d);
        }
        
        
        
        NSMutableArray *ddateList = [NSMutableArray array];
        
        [ddateList addObject:now];
        [ddateList addObject:tommorrow];
        
        [ddateList insertObject: yesterday atIndex:0];
        
        
        for (NSDate *dd in ddateList){
            NSLog (@"3Here is a date: %@", dd);
        }
        
        sleep(1);
        
        [ddateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", ddateList[0]);
        
        NSLog(@"My grocery list is:");
        
        NSString *lb = @"Loaf of Bread";
        NSString *cm = @"Container of Milk";
        NSString *sb = @"Stick of butter";
        
        NSArray *lizta = @[lb, cm, sb];
        
        NSLog(@"%@",lizta);
        
        
    }
    return 0;
}
