//
//  QqcTimeCounter.h
//  QqcFramework
//
//  Created by mahailin on 15/8/9.
//  Copyright (c) 2015年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QqcSingletonTemplate.h"

/**
 *  用于计算某操作所消耗的时间
 */
@interface QqcTimeCounter : NSObject

/**
 *  时间消耗，单位：毫秒
 */
@property (nonatomic, readonly) uint64_t millisecondElapsed;

single_interface_qqc(QqcTimeCounter)

/**
 *  开始计时
 */
- (void)start;

/**
 *  结束计时
 */
- (void)end;

/**
 *  重置计时器
 */
- (void)reset;

@end
