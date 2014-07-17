//
//  TestOneViewController.m
//  ZzTest
//
//  Created by lion on 14-7-8.
//  Copyright (c) 2014年 lion. All rights reserved.
//

#import "TestOneViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"

@interface TestOneViewController ()

@end

@implementation TestOneViewController

int flag = 1;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self setTitle:@"TestOneView"];
        [self.navigationController.navigationBar setBackgroundColor:[UIColor blueColor]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [button1 setBackgroundImage:[UIImage imageNamed:@"down.png"] forState:UIControlStateNormal];
    [self.navigationController.navigationBar setBackgroundColor:[UIColor redColor]];
    //[self.navigationController.view setBackgroundColor:[UIColor redColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)button1:(id)sender
{
    OneViewController *view1 = [[OneViewController alloc] initWithNibName:@"OneViewController" bundle:nil];
    flag ++;
    if (flag == 2) {
        [button1 setBackgroundImage:[UIImage imageNamed:@"01-26.png"] forState:UIControlStateNormal];
        flag = 0;
    }
    else
    {
        [button1 setBackgroundImage:[UIImage imageNamed:@"down.png"] forState:UIControlStateNormal];
    }
    
    [self presentViewController:view1 animated:YES completion:nil];

}
-(IBAction)button2:(id)sender
{
    TwoViewController *twoView = [[TwoViewController alloc] initWithNibName:@"TwoViewController" bundle:nil];
    [self.navigationController pushViewController:twoView animated:YES];
}

@end
