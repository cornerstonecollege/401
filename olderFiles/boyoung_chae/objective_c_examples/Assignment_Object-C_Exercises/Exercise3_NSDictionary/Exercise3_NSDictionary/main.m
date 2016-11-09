//
//  main.m
//  Exercise3_NSDictionary
//
//  Created by Boyoung on 2016-09-14.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSLog(@"=== Exercise 3 ===");
        NSLog(@"NSDictionary!");
        
        NSDictionary *storeDictionary = @{
                                          @"object1" : @"table",
                                          @"object2" : @"fridge",
                                          @"storeName" : @"WallMart",
                                          @"address" : @"123 Fake St"
                                          };
        
        NSLog(@"* Result * \nThe store %@ in %@ is selling %@, %@.", storeDictionary[@"storeName"], storeDictionary[@"address"], storeDictionary[@"object1"], storeDictionary[@"object2"]);
    }
    return 0;
}