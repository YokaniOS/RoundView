//
//  BateChat.h
//  YH_RoundView
//
//  Created by 余晗 on 16/1/7.
//  Copyright © 2016年 余晗. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChartBase.h"
@interface BateChart : UIView
@property (nonatomic,strong)NSArray *itemArr;
-(id)initWithItemArr:(NSArray *)itemArr frame:(CGRect)frame;
@end
