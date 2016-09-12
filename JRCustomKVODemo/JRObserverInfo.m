//
//  JRObserverInfo.m
//  JRCustomKVO
//
//  Created by sky on 16/9/6.
//  Copyright © 2016年 sky. All rights reserved.
//

#import "JRObserverInfo.h"

@implementation JRObserverInfo

- (instancetype)initWithObserver:(id)observer key:(NSString *)key callback:(JRKVOCallback)callback
{
    if (self = [super init]) {
        _observer = observer;
        _key = key;
        _callback = callback;
    }
    
    return self;
}

@end
