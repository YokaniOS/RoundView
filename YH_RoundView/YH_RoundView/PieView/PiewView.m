//
//  PiewView.m
//  PieTest
//
//  Created by 余晗 on 9/25/15.
//  Copyright (c) 2015 sdy. All rights reserved.
//

#import "PiewView.h"

@implementation PiewView
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
/** 指定扇(圆)形的颜色和比率
  @param bgColor 扇(圆)形的颜色
 @param bate 比率...0是没圆,100是整圆,0-100是扇形,bate不能大于100
 */
-(id)initWithBgColor:(UIColor *)bgColor bate:(NSInteger)bate frame:(CGRect)frame
{
    if(self=[super initWithFrame:frame]){
    if(!bgColor) assert(@"颜色不能为空!");
    if(bate>100) assert(@"bate不能大于100!");
        self.bgColor=bgColor;
        self.bate=bate;
        self.backgroundColor=[UIColor clearColor];
    }
    return self;
}

-(float)radiansDegrees:(double)degrees {
  return degrees * M_PI / 180;
}

-(void)drawArc:(CGContextRef)ctx point:(CGPoint)point angle_start:(float)angle_start angle_end:(float)angle_end color:(UIColor *)color
{
  CGContextMoveToPoint(ctx, point.x, point.y);
  CGContextSetFillColor(ctx, CGColorGetComponents( [color CGColor]));
  CGContextAddArc(ctx, point.x, point.y, self.frame.size.width/2,  angle_start, angle_end, 0);
  CGContextFillPath(ctx);
}

-(void)drawRect:(CGRect)rect
{
  if(self.bate==0)
  {
    return;
  }
  double angle=360*self.bate/100;
  CGContextRef ctx = UIGraphicsGetCurrentContext();
  CGContextClearRect(ctx, self.frame);
  float angle_start = [self radiansDegrees:-90];
  float angle_end = [self radiansDegrees:-90+angle];
  [self drawArc:ctx point:CGPointMake(self.frame.size.width/2, self.frame.size.width/2) angle_start:angle_start angle_end:angle_end color:self.bgColor];
}

@end
