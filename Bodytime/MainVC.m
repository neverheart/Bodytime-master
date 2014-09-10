//
//  MainVC.m
//  Bodytime
//
//  Created by Admin on 03.09.14.
//  Copyright (c) 2014 GoldApps. All rights reserved.
//

#import "MainVC.h"

@interface MainVC ()

@end

@implementation MainVC


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*Тестируем пользователя при включении приложения
    [self performSelector:@selector(performTestSegue)
               withObject:self
               afterDelay:2];*/
}

//Метод, вызывающий тестирование
-(void)performTestSegue
{
    [self performSegueWithIdentifier:@"TestUser" sender:self];
}


-(NSString*)segueIdentifierForIndexPathInLeftMenu:(NSIndexPath *)indexPath
{
    NSString * identifier;
    switch (indexPath.row) {
        case 0:
            identifier=@"firstSegue";
            break;
        case 1:
            identifier=@"secondSegue";
            break;
        case 2:
            identifier=@"thirdSegue";
            break;
        case 3:
            identifier=@"fourthSegue";
            break;
        case 4:
            identifier=@"fifthSegue";
            break;
    }
    return identifier;
}

/*-(void)configureLeftMenuButton:(UIButton *)button
{
    CGRect frame=button.frame;
    frame.origin=(CGPoint){0,0};
    frame.size=(CGSize){40,40};
    button.frame=frame;
    [button setImage:[UIImage imageNamed:@"icon-menu"] forState:UIControlStateNormal];
}*/

@end
