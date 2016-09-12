//
//  NSObject+jr_KVO.h
//  JRCustomKVO
//
//  Created by sky on 16/9/6.
//  Copyright © 2016年 sky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JRObserverInfo.h"

@interface NSObject (jr_KVO)

- (void)jr_addObserver:(id)observer key:(NSString *)key callback:(JRKVOCallback)callback;

- (void)jr_removeObserver:(id)observer key:(NSString *)key;

@end
