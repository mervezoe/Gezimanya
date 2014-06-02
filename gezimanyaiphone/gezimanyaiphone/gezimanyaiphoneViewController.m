//
//  gezimanyaiphoneViewController.m
//  gezimanyaiphone
//
//  Created by Merve Engur on 20/11/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import "gezimanyaiphoneViewController.h"
#import "MMDrawerBarButtonItem.h"
#import "LeftViewController.h"
#import "RightViewController.h"
#import "gezimanyaiphoneAppDelegate.h"
#import "MapDisplay.h"
#import "LogViewController.h"


@interface gezimanyaiphoneViewController ()

@end

@implementation gezimanyaiphoneViewController
@synthesize mapView, loginView, LogDelegate, loginWindow, login;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self hideHUD];
    
    LoginOrNot=NO;
    
    mapView = [[MapDisplay alloc] initWithFrame:CGRectMake(0, 0, 320, 568) withDelegate:self];
    [mapView setInteractive:YES];
    [mapView setSpanValue:0.01];
    
    [self.view addSubview:mapView];
    
    MMDrawerBarButtonItem *leftBtn = [[MMDrawerBarButtonItem alloc] initWithTarget:self action:@selector(btnTappedLeft:)];
    [self.navigationItem setLeftBarButtonItem:leftBtn animated:YES];
    
    MMDrawerBarButtonItem *rightBtn = [[MMDrawerBarButtonItem alloc] initWithTarget:self action:@selector(btnTappedRight:)];
    [self.navigationItem setRightBarButtonItem:rightBtn animated:YES];
    

   
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) tapped:(id)sender
{
    [mapView setInteractive:YES];
}

- (void) viewDidDisappear:(BOOL)animated
{
    [mapView removeFromSuperview];
    [super viewDidDisappear:animated];
}

-(void)btnTappedLeft:(id)sender {
    
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:^(BOOL finished) {
        NSLog(@"sol menu animasyonu bitti");
    }];
}
-(void)btnTappedRight:(id)sender {
    
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideRight animated:YES completion:^(BOOL finished) {
        NSLog(@"sağ menu animasyonu bitti");
    }];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [mapView resignFirstResponder];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) tappedFromMap
{
    NSLog(@"sgahdgasjd");
}

- (IBAction)loginButtonTouchHandler:(id)sender{
    NSLog(@"login button touch handler");

    LoginOrNot=YES;
    [self.loginView removeFromSuperview];
    

    
    
}

@end
