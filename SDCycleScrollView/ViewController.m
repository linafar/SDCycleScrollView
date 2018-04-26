//
//  ViewController.m
//  SDCycleScrollView
//
//  Created by Lina on 2017/7/31.
//  Copyright © 2017年 ryhx_lina. All rights reserved.
//

#import "ViewController.h"
#import <SDCycleScrollView.h>
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define RGBColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

@interface ViewController ()<SDCycleScrollViewDelegate>
@property(strong,nonatomic) NSMutableArray *cycleimageArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cycleimageArray = [NSMutableArray arrayWithObjects:@"homebanner1", @"homebanner2",@"homebanner3",nil];
     SDCycleScrollView *cycleScrollView =[SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0,0, SCREEN_WIDTH, SCREEN_HEIGHT*0.3) imageNamesGroup:self.cycleimageArray];
    cycleScrollView.pageControlAliment = SDCycleScrollViewPageContolAlimentCenter;
    //    cycleScrollView.titlesGroup = titles;
    //    cycleScrollView.currentPageDotColor = [UIColor whiteColor]; // 自定义
    cycleScrollView.currentPageDotColor = RGBColor(211, 76, 59);
    //    cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 280, w, SCREEN_HEIGHT*0.3) delegate:self placeholderImage:[UIImage imageNamed:@"placeholder"]];
    //    cycleScrollView.backgroundColor = []
    
    
    
    UIView *headView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT * 0.3 +40)];
    headView.backgroundColor = [UIColor clearColor];
    
    //分页控件小圆标颜色
    [headView addSubview:cycleScrollView];
    [self.view addSubview:headView];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
