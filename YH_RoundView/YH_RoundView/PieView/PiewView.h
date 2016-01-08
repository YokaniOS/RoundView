//
//  PiewView.h
//  PieTest
//
//  Created by 余晗 on 9/25/15.
//  Copyright (c) 2015 sdy. All rights reserved.
//

#import <UIKit/UIKit.h>
// 这个是单笔率的扇形
@interface PiewView : UIView
@property (nonatomic,assign)NSInteger bate;
@property (nonatomic,strong)UIColor *bgColor;
/** 指定扇(圆)形的颜色和比率
 @param bgColor 扇(圆)形的颜色
 @param bate 比率...0是没圆,100是整圆,0-100是扇形,bate不能大于100
 */
-(id)initWithBgColor:(UIColor *)bgColor bate:(NSInteger)bate frame:(CGRect)frame;
@end
