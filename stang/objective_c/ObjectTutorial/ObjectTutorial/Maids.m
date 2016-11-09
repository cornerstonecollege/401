//
//  Maids.m
//  ObjectTutorial
//
//  Created by SG on 2016-09-12.
//  Copyright © 2016 SG. All rights reserved.
//

#import "Maids.h"

@implementation Maids{
    int cleaningBill;
}


// jak wyzej bylo opisane dodajemy parametry do klasy zdefiniowanym w headerze i idziemy do pliku glownego
- (void) cleanKitchen {
    NSLog (@"Pls Clean the Kitchen");
}

- (void) billing {
    NSLog(@"$%i",cleaningBill);
}

- (void) setCleaningBills: (int) cb{
    cleaningBill = cb;
}
- (int) cleaningBill{
    
    return cleaningBill;

}

@end
