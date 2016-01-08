//
//  ViewController.m
//  YH_RoundView
//
//  Created by 余晗 on 16/1/7.
//  Copyright © 2016年 余晗. All rights reserved.
//

#import "ViewController.h"
#import "SimpleBateChart.h"
#import "SegementChart.h"
@interface ViewController ()
@property (nonatomic,strong)NSArray *itemArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    self.itemArr=@[@"一个扇形",@"多个扇形分割",@"扇形选择动画"];
    //几种比率分割
    self.homeTable=[[UITableView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height)];
    self.homeTable.delegate=self;
    self.homeTable.dataSource=self;
    [self.view addSubview:self.homeTable];
    // Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.itemArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellName=@"cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellName];
    if(!cell)
    {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
    }
    [cell.textLabel setText:self.itemArr[indexPath.row]];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
        {
            SimpleBateChart *simpleBateChat=[[SimpleBateChart alloc] init];
            [self presentViewController:simpleBateChat animated:YES completion:^{
            }];
        }
            break;
        case 1:
        {
            SegementChart *segementChart=[[SegementChart alloc] init];
            [self presentViewController:segementChart animated:YES completion:^{
            }];
        }
        default:
            break;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
