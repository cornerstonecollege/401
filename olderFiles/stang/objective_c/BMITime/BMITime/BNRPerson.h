//
//  BNRPerson.h
//  BMITime
//
//  Created by SG on 2016-09-07.
//  Copyright © 2016 SG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject
{

    float _heightInMeters;
    int _weightInKilos;
    
}

- (float)heightInMeters;
- (void)setHeightInMeters:(float)h;
- (int)weightInKilos;
- (void)setWeightInKilos:(int)w;

- (float)bodyMassIndex;

@end
