//
//  Maids.h
//  ObjectTutorial
//
//  Created by SG on 2016-09-12.
//  Copyright © 2016 SG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Maids : NSObject

// def klasy ktotko nastepnie przeskocz do nastepnego pliku i dodac parametry co dana klasa ma robic

- (void) cleanKitchen;
- (void) billing;

- (void) setCleaningBills: (int) cb;
- (int) cleaningBill;

@end
