//
//  BaseViewController.m
//  gezimanyaiphone
//
//  Created by Merve Engur on 25/11/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import "BaseViewController.h"
#import "Config.h"
#import "MBProgressHUD.h"
//#import "TTAlertView.h"
#import <MMDrawerController/MMDrawerController.h>
#import "MMDrawerBarButtonItem.h"
#import "LocationManager.h"

@interface BaseViewController ()

@end

@implementation BaseViewController
 

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
    self.view.backgroundColor = VC_BACKGROUND_COLOR;
    if (IOS_VERSION>6) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(receiveNotification:)
                                                 name:kPARSE_REGISTER_FAIL
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(receiveNotification:)
                                                 name:kPARSE_REGISTER_SUCCESS
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(receiveNotification:)
                                                 name:kPARSE_LOGIN_FAIL
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(receiveNotification:)
                                                 name:kPARSE_LOGOUT
                                               object:nil];
}

- (void) receiveNotification:(NSNotification *) notification
{
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    [[LocationManager sharedManager] stopLocationLog];
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    ///[[NSNotificationCenter defaultCenter] removeObserver:self];
    [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) showHUD
{
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
}

- (void) hideHUD
{
    [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
}


- (void) removeVC
{
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"REMOVED");
    }];
}

#pragma mark TEXTFIELD DELEGATE

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [textField resignFirstResponder];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}

- (BOOL)textFieldShouldClear:(UITextField *)textField
{
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return YES;
}

- (void) tapHandler:(UIGestureRecognizer*)gesture
{
    [self removeKeyboard];
}

- (void) removeKeyboard
{
    [self.view endEditing:YES];
}

-(void) addleftMenuBtn{
    leftBtn = [[MMDrawerBarButtonItem alloc] initWithTarget:self action:@selector(btnTappedLeft:)];
    [self.navigationItem setLeftBarButtonItem:leftBtn animated:YES];
}
-(void) addRightMenuBtn {
    rightBtn = [[MMDrawerBarButtonItem alloc] initWithTarget:self action:@selector(btnTappedRight:)];
    [self.navigationItem setRightBarButtonItem:rightBtn animated:YES];
    
}
-(void)btnTappedLeft: (id)sender {
    
 //   [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:^(BOOL finished) {
   //     NSLog(@"Left menu opened");
  //  }];
    
}

-(void)btnTappedRight: (id)sender {
    //[self.mm_drawerController toggleDrawerSide:MMDrawerSideRight animated:YES completion:^(BOOL finished) {
     //   NSLog(@"Right menu opened");
   // }];
    
}

@end
