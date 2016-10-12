//
//  Employee.h
//  horizontalInheritance
//
//  Created by Boyoung on 2016-09-12.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Client.h"

@interface Employee : NSObject <LoginProtocol>

@property (nonatomic, weak) id<LoginProtocol> user1;

@end
