//
//  SimpleBateChart.m
//  YH_RoundView
//
//  Created by 余晗 on 16/1/7.
//  Copyright © 2016年 余晗. All rights reserved.
//
#import "PiewView.h"
#import "SimpleBateChart.h"

@interface SimpleBateChart ()

@end

@implementation SimpleBateChart

- (void)viewDidLoad {
    [super viewDidLoad];
    //单独的一个扇形
    PiewView *pieView=[[PiewView alloc] initWithBgColor:[UIColor redColor] bate:56 frame:CGRectMake(0, (self.view.frame.size.height-self.view.frame.size.width)/2, self.view.frame.size.width, self.view.frame.size.width)];
    [self.view addSubview:pieView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
  [self dismissViewControllerAnimated:YES completion:^{
      
  }];
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
