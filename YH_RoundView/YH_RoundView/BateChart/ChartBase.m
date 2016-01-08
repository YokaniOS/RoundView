//
//  ChatBase.m
//  YH_RoundView
//
//  Created by 余晗 on 16/1/7.
//  Copyright © 2016年 余晗. All rights reserved.
//

#import "ChartBase.h"

@implementation ChartBase
+(ChartBase *)chartBaeFromContentColor:(UIColor *)contentColor bate:(NSInteger)bate
{
    ChartBase *chartBase=[[ChartBase alloc] init];
    chartBase.contentColor=contentColor;
    chartBase.bate=bate;
    return chartBase;
}
@end
