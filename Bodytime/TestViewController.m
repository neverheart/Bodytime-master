//
//  TestViewController.m
//  alpha_Cal-Cal_1
//
//  Created by Barbarossa on 28.08.14.
//  Copyright (c) 2014 barbarossa.inc. All rights reserved.
//

#import "TestViewController.h"


@implementation TestViewController

@synthesize myGenderSegment;
@synthesize myWeightTextField;
@synthesize myGrowthTextField;
@synthesize myAgeTextField;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.myAgeTextField.delegate=self;
    self.myGrowthTextField.delegate=self;
    self.myWeightTextField.delegate=self;
    self.navigationItem.hidesBackButton=YES;
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Algorithm


- (IBAction)raschet:(id)sender {
    BOOL isWomen;
    if (myGenderSegment.selectedSegmentIndex==1) {
        isWomen=true;
    }
    else
    {
        isWomen=false;
    }
    NSNumber *VBS=[self valueBaseMetabolismWithAge:[NSNumber numberWithFloat:[myAgeTextField.text floatValue]]
                                        withGrowth:[NSNumber numberWithFloat:[myGrowthTextField.text floatValue]]
                                        withWeight:[NSNumber numberWithFloat:[myWeightTextField.text floatValue]]
                                           isWomen:isWomen];
    NSLog(@"Базовый обмен веществ = %@ ккал",VBS);
    /*
    SecondTestViewController *secondTest=[self.storyboard instantiateViewControllerWithIdentifier:@"SecondTestViewController"];
    [self.navigationController pushViewController:secondTest animated:YES];
*/
}


-(NSNumber*)valueBaseMetabolismWithAge:(NSNumber*)age
                            withGrowth:(NSNumber*)growth
                            withWeight:(NSNumber*)weight
                            isWomen:(BOOL)women
{
    float returnValue = 9.99f * [weight floatValue];
    returnValue+=6.25 * [growth floatValue];
    returnValue-=4.92 * [age floatValue];
    if (women) {
        returnValue+=161.0f;
    }
    else
    {
        returnValue-=5.0f;
    }

    return [NSNumber numberWithFloat:returnValue];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end