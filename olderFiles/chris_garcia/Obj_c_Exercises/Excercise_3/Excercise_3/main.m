//
//  main.m
//  Excercise_3
//
//  Created by Christian on 2016-09-16.
//  Copyright © 2016 Christian. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *dictionari = @{
                                     @"Object1" : @"table",
                                     @"Object2" : @"fridge",
                                     @"storeName" : @"Wallmart",
                                     @"address" : @"123Fake St"
                                     };
        
        NSLog(@"The store %@ is selling %@ , %@ .", dictionari[@"storeName"], dictionari[@"Object1"], dictionari[@"Object2"]);
    }
    return 0;
}
