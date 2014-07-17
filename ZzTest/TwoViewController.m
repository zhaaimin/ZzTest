//
//  TwoViewController.m
//  ZzTest
//
//  Created by lion on 14-7-8.
//  Copyright (c) 2014年 lion. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self setTitle:@"TwoView"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.navigationController.navigationBar setBackgroundColor:[UIColor blackColor]];
    
    
    UIButton *buttonConstom = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonConstom.frame = CGRectMake(0, 0, 40, 40);
    [buttonConstom setTitle:@"返回" forState:UIControlStateNormal];
    [buttonConstom addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *bar = [[UIBarButtonItem alloc] initWithCustomView:buttonConstom];
    
    self.navigationItem.leftBarButtonItem = bar;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)back:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
    [self.navigationController.navigationBar setBackgroundColor:[UIColor redColor]];
}

@end
