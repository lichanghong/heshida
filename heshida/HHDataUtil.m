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
   return [NSArray arrayWithObjects:@"武术散打协会",@"新媒体协会",@"援孤社协会", nil];
}


+(NSArray *)schoolItems
{
    return [NSArray arrayWithObjects:
            @"空闲教室",@"校园黄页（各科室领导联系方式)",@"科研活动",@"学校新闻",
             @"天气预报",@"校历",@"校区地图",@"班车查询",
             @"视频新闻",@"移动图书馆",@"我的课表",@"我的成绩",
            @"我的培养",@"上课时间",@"评论校园", nil];
}

+ (NSArray *)moreInfos
{
    return [NSArray arrayWithObjects:@"校园二手物品交易", @"校园交友",@"兼职信息",@"意见反馈",
            @"支持我们点个赞",@"关于",@"退出",nil];
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
