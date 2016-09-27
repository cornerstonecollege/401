//
//  HttpRequest.h
//  Exercise6_7_BlockAndCallback
//
//  Created by Boyoung on 2016-09-15.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^RequestBlock1)(void);
typedef void(^RequestBlock2)(NSString *);

@interface HttpRequest : NSObject

- (void) requestWithCallback1:(RequestBlock1)block;
- (void) requestWithCallback2:(NSString *)str andBlock:(RequestBlock2)block;


@end
