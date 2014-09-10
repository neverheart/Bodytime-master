//
//  SecondTestViewController.h
//  alpha_Cal-Cal_1
//
//  Created by Barbarossa on 02.09.14.
//  Copyright (c) 2014 barbarossa.inc. All rights reserved.
//



#import <UIKit/UIKit.h>

@interface SecondTestViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
{
    NSArray *myLifeStyleList;
    NSArray *myLifeStyleFactor;
    NSNumber *BallanceMetabolismValue;
}

@property (strong, nonatomic) IBOutlet UITableView *myTableView;
@property (strong, nonatomic) NSNumber *rawMetabolismValue;
@property (strong, nonatomic) NSNumber *BallanceMetabolismValue;

@end
