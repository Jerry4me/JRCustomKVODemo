//
//  JRObserverInfo.h
//  JRCustomKVO
//
//  Created by sky on 16/9/6.
//  Copyright © 2016年 sky. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^JRKVOCallback)(id observer, NSString *key, id oldValue, id newValue);

@interface JRObserverInfo : NSObject

/** 监听者 */
@property (nonatomic, weak) id observer;

/** 监听的属性 */
@property (nonatomic, copy) NSString *key;

/** 回调的block */
@property (nonatomic, copy) JRKVOCallback callback;


- (instancetype)initWithObserver:(id)observer key:(NSString *)key callback:(JRKVOCallback)callback;

@end
