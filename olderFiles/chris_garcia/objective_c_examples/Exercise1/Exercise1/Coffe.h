//
//  Coffe.h
//  Exercise1
//
//  Created by Christian on 2016-09-07.
//  Copyright © 2016 Christian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Coffe : NSObject

@property NSString *flavor;
@property NSInteger nScoops;
@property NSString *size;

-(instancetype) initWithFlavor:(NSString *)flavor andNumberScoops:(NSInteger)nScoops andSize:(NSString *)size;


@end
