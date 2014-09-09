//
//  StatisticsController.h
//  Bodytime
//
//  Created by Admin on 03.09.14.
//  Copyright (c) 2014 GoldApps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JBChartView.h"
#import "JBBarChartView.h"
#import "JBLineChartView.h"

@interface StatisticsController : UITableViewController <JBBarChartViewDelegate,JBBarChartViewDataSource>

@end
