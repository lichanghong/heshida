//
//  HHDataUtil.h
//  uiwindowtest
//
//  Created by li on 8/20/15.
//  Copyright (c) 2015 qihoo.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HHDataUtil : NSObject

//学生会列表
+ (NSArray *)studentsUnit;

//校园网功能列表
+(NSArray *)schoolItems;

//更多信息
+(NSArray *)moreInfos;

+ (void)getTest;

@end
