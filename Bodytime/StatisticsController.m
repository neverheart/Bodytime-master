//
//  StatisticsController.m
//  Bodytime
//
//  Created by Admin on 03.09.14.
//  Copyright (c) 2014 GoldApps. All rights reserved.
//

#import "StatisticsController.h"

@interface StatisticsController ()

@end

@implementation StatisticsController



- (void)viewDidLoad
{
    [super viewDidLoad];
    JBBarChartView *barChartView = [[JBBarChartView alloc] init];
    barChartView.dataSource = self;
    barChartView.delegate = self;
    [self.view addSubview:barChartView];
    // Do any additional setup after loading the view.
}

- (NSUInteger)numberOfBarsInBarChartView:(JBBarChartView *)barChartView
{
    return 8; // number of bars in chart
}

- (CGFloat)barChartView:(JBBarChartView *)barChartView heightForBarViewAtIndex:(NSUInteger)index
{
    return 30; // height of bar at index
}

@end
