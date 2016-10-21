//
//  CICCCAnimal.h
//  Objects
//
//  Created by Digby Andrews on 2016-05-11.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, TYPE_ANIMAL)
{
    TA_MAMMAL = 1,
    TA_REPTILE = 2,
    TA_BIRD = 3
};

@interface CICCCAnimal : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) TYPE_ANIMAL type;

- (void) run;
- (void) stopRunning;
- (BOOL) isRunning;

@end
