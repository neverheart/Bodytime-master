//
//  SecondTestViewController.m
//  alpha_Cal-Cal_1
//
//  Created by Barbarossa on 02.09.14.
//  Copyright (c) 2014 barbarossa.inc. All rights reserved.
//

#import "SecondTestViewController.h"


@implementation SecondTestViewController

@synthesize rawMetabolismValue;
@synthesize BallanceMetabolismValue;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


#pragma mark view lifecicle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.myTableView.alwaysBounceVertical=YES;
    self.myTableView.dataSource=self;
    self.myTableView.delegate=self;
    
    
    myLifeStyleList=[[NSArray alloc] initWithObjects:
                     @"Минимальные нагрузки (сидячая работа)",
                     @"Немного дневной активности и легкие упражнения 1-3 раза в неделю",
                     @"Тренировки 4-5 раз в неделю (или работа средней тяжести)",
                     @"Интенсивные тренировки 4-5 раз в неделю",
                     @"Ежедневные тренировки",
                     @"Ежедневные интенсивные тренировки или тренировки 2 раза в день",
                     @"Тяжелая физическая работа или интенсивные тренировки 2 раза в день",
                     nil];
    
    myLifeStyleFactor=[[NSArray alloc] initWithObjects:
                       [NSNumber numberWithDouble:1.2],
                       [NSNumber numberWithDouble:1.375],
                       [NSNumber numberWithDouble:1.4625],
                       [NSNumber numberWithDouble:1.550],
                       [NSNumber numberWithDouble:1.6375],
                       [NSNumber numberWithDouble:1.725],
                       [NSNumber numberWithDouble:1.9],
                        nil];
    
    NSLog(@"Расчетное знаечение из предыдущего контролллера %@", self.rawMetabolismValue);
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

#pragma mark - TableView meth

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%@",[NSNumber numberWithInteger:indexPath.row]);
    double factor=[[myLifeStyleFactor objectAtIndex:indexPath.row] doubleValue];
    double value=[rawMetabolismValue doubleValue];
    double result=factor*value;
    BallanceMetabolismValue =[NSNumber numberWithDouble:result];
    NSLog(@"Коофицент - %@, Сбалансированное значение - %@",[NSNumber numberWithDouble:factor], BallanceMetabolismValue);
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [myLifeStyleList count];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50.0f;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"LifeStile"];
    
    cell.textLabel.text=[myLifeStyleList objectAtIndex:indexPath.row];
    
    return cell;
}


@end
