//
//  TestViewController.h
//  alpha_Cal-Cal_1
//
//  Created by Barbarossa on 28.08.14.
//  Copyright (c) 2014 barbarossa.inc. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "SecondTestViewController.h"


@interface TestViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UISegmentedControl *myGenderSegment;
@property (strong, nonatomic) IBOutlet UITextField *myGrowthTextField;
@property (strong, nonatomic) IBOutlet UITextField *myWeightTextField;
@property (strong, nonatomic) IBOutlet UITextField *myAgeTextField;



@end
