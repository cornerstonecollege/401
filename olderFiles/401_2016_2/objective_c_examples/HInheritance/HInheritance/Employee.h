//
//  Employee.h
//  HInheritance
//
//  Created by Luiz on 2016-09-12.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Client.h"

@interface Employee : NSObject <LoginProtocol>

@property (nonatomic, weak) id<LoginProtocol> user1;

@end
