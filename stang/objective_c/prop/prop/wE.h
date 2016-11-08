//
//  wE.h
//  prop
//
//  Created by SG on 2016-09-08.
//  Copyright © 2016 SG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface wE : NSObject

@property (nonatomic, readwrite) float heightInMeters;
@property (nonatomic, readwrite) int weightInKilos;


- (float)bodyMassIndex;

@end
