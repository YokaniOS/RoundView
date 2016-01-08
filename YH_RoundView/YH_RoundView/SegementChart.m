//
//  SegementChart.m
//  YH_RoundView
//
//  Created by 余晗 on 16/1/7.
//  Copyright © 2016年 余晗. All rights reserved.
//

#import "SegementChart.h"
#import "BateChart.h"
@interface SegementChart ()

@end

@implementation SegementChart

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor colorWithRed:243/255.f green:243/255.f blue:243/255.f alpha:1]];
    BateChart *bateChart=[[BateChart alloc] initWithItemArr:[NSArray arrayWithObjects:[ChartBase chartBaeFromContentColor:[UIColor redColor] bate:378],[ChartBase chartBaeFromContentColor:[UIColor yellowColor] bate:38] ,[ChartBase chartBaeFromContentColor:[UIColor greenColor] bate:384],nil] frame:self.view.frame];
    [self.view addSubview:bateChart];
    // Do any additional setup after loading the view.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
