//
//  ChatBase.h
//  YH_RoundView
//
//  Created by 余晗 on 16/1/7.
//  Copyright © 2016年 余晗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ChartBase : NSObject
@property (nonatomic,strong)UIColor *contentColor;
@property (nonatomic,assign)double bate;
+(ChartBase *)chartBaeFromContentColor:(UIColor *)contentColor bate:(NSInteger)bate;
@end
