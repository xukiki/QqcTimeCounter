//
//  QqcTimeCounter.m
//  QqcFramework
//
//  Created by mahailin on 15/8/9.
//  Copyright (c) 2015年 admin. All rights reserved.
//

#import "QqcTimeCounter.h"
#import <mach/mach_time.h>

@interface QqcTimeCounter ()

/**
 *  记录开始计时的时间
 */
@property (nonatomic, assign) uint64_t startTime;

/**
 *  记录结束计时的时间
 */
@property (nonatomic, assign) uint64_t endTime;

@end

@implementation QqcTimeCounter

single_implementation_qqc(QqcTimeCounter)

-(id)init
{
    self = [super init];
    
    if (self)
    {
        [self reset];
    }
    
    return self;
}

/**
 *  开始计时
 */
- (void)start
{
    self.startTime = mach_absolute_time();
}

/**
 *  结束计时
 */
- (void)end
{
    self.endTime = mach_absolute_time();
}

/**
 *  重置计时器
 */
- (void)reset
{
    self.startTime = 0;
    self.endTime = 0;
}

/**
 *  时间消耗
 *
 *  @return 返回所消耗的时间，单位为毫秒
 */
- (uint64_t)millisecondElapsed
{
    uint64_t elapsed = self.endTime - self.startTime;
    mach_timebase_info_data_t info;
    
    if (mach_timebase_info (&info) != KERN_SUCCESS)
    {
        return 0;
    }
    
    uint64_t nanosecs = elapsed * info.numer / info.denom;
    return nanosecs / USEC_PER_SEC;
}

@end
