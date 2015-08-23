//
//  HHDataUtil.m
//  uiwindowtest
//
//  Created by li on 8/20/15.
//  Copyright (c) 2015 qihoo.com. All rights reserved.
//

#import "HHDataUtil.h"

@implementation HHDataUtil

+ (NSArray *)studentsUnit
{
   return [NSArray arrayWithObjects:@"武术散打", nil];
}


















+(instancetype)defaultData
{
    static HHDataUtil *s_data=nil;
    @synchronized(self)
    {
        if (s_data) {
            return s_data;
        }
        s_data = [[HHDataUtil alloc]init];
    }
    return s_data;
}














@end
