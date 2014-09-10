//
//  CalendarController.m
//  Bodytime
//
//  Created by Admin on 03.09.14.
//  Copyright (c) 2014 GoldApps. All rights reserved.
//

#import "CalendarController.h"

@interface CalendarController ()

@end

@implementation CalendarController


- (void)viewDidLoad
{
    [super viewDidLoad];
    MNCalendarView *calendarView = [[MNCalendarView alloc] initWithFrame:self.view.bounds];
    CGRect calendarViewFrame=CGRectMake(0, 70, calendarView.frame.size.width, calendarView.frame.size.height);
    calendarView.frame=calendarViewFrame;
    calendarView.selectedDate = [NSDate date];
    calendarView.delegate = self;
    [self.view addSubview:calendarView];
}





@end
