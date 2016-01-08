//
//  BateChat.m
//  YH_RoundView
//
//  Created by 余晗 on 16/1/7.
//  Copyright © 2016年 余晗. All rights reserved.
//

#import "BateChart.h"

@implementation BateChart
-(id)initWithItemArr:(NSArray *)itemArr frame:(CGRect)frame
{
    if(self=[super initWithFrame:frame])
    {
        if(itemArr && itemArr.count>0)
        {
            assert(@"itemArr必须是arr对象,并且数目不为0");
        }
        self.itemArr=itemArr;
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
    double total=0;
    for (ChartBase *chartBase in self.itemArr) {
        if([[chartBase class] isSubclassOfClass:[ChartBase class]])
        {
                   total+=chartBase.bate;
        }
        else
        {
            assert(@"itemArr中不允许包含其它对象");
        }
    }
    float lastEnd=[self radiansDegrees:-90];
    for (ChartBase *chartBase in self.itemArr) {
        double angle=360*chartBase.bate/total;
        CGContextRef ctx = UIGraphicsGetCurrentContext();
        float angle_start =lastEnd;
        float angle_end = angle_start+[self radiansDegrees:angle];
        [self drawArc:ctx point:CGPointMake(self.frame.size.width/2, self.frame.size.width/2) angle_start:angle_start angle_end:angle_end color:chartBase.contentColor];
        lastEnd=angle_end;
    }
 
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
