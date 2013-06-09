//
//  NewFirstViewController.m
//  CustomTabbar
//
//  Created by l on 13-6-9.
//  Copyright (c) 2013年 l. All rights reserved.
//

#import "NewFirstViewController.h"
#import "NewSecondViewController.h"
@interface NewFirstViewController ()

@end

@implementation NewFirstViewController

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
    self.title = @"NewFirst";
    self.view.backgroundColor = [UIColor magentaColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(110, 200, 100, 50);
    [button setTitle:@"NewFirst" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pushNewVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
-(void)pushNewVC
{
    NewSecondViewController *newSecondVC = [[NewSecondViewController alloc] init];
    [self.navigationController pushViewController:newSecondVC animated:YES];
    [newSecondVC release];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
