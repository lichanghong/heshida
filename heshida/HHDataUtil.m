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


//接口测试入口----------------------------------------
+ (void)getTest
{
    //如果接口是本地的，传NO，@“”  如果是网络接口：YES，@“网络url”
    [HHDataUtil testNet:YES url:@"http://www.ezhi.net/api/test/index.php"];
}

+ (void)testNet:(BOOL)isNet url:(NSString *)urlstr
{
    if (!isNet) {
        [self test_local_text];
    }
    else
        [self test_Net_text:urlstr];
}
//测试本地接口数据
+ (void)test_local_text
{
    NSString *filePath= [[NSBundle mainBundle]pathForResource:@"test" ofType:@"ini"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    id jsonObj = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    NSLog(@"json local text = %@",jsonObj);
}

//测试网络接口数据
+ (void)test_Net_text:(NSString *)stringURL
{
//    NSURL *url = [NSURL URLWithString:stringURL];
//    NSData *data = [NSData dataWithContentsOfURL:url];
//    id jsonObj = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
//    NSLog(@"json net text = %@",jsonObj);
}
//---------------------------end test----------















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
