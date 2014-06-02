//
//  RegisterViewController.m
//  gezimanyaiphone
//
//  Created by Merve Engur on 28/11/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import "RegisterViewController.h"
#import "UserManager.h"
#import "MBProgressHud.h"
#import "gezimanyaiphoneAppDelegate.h"
#import "Config.h"
#import <Parse/Parse.h>

@interface RegisterViewController ()

@end

@implementation RegisterViewController
@synthesize nameTxt;
@synthesize surnameTxt;
@synthesize emailTxt;
@synthesize usernameTxt;
@synthesize passwordTxt;
@synthesize registerButton;

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
    
    self.title = @"Üye Ol";
    
    
    nameTxt = [[UITextField alloc] initWithFrame:CGRectMake(10, 30, 300, 45)];
    nameTxt.backgroundColor = [UIColor whiteColor];
    nameTxt.placeholder = @"Name";
    [self.view addSubview:nameTxt];
    
    surnameTxt = [[UITextField alloc] initWithFrame:CGRectMake(10, 80, 300, 45)];
    surnameTxt.backgroundColor = [UIColor whiteColor];
    surnameTxt.placeholder = @"Surname";
    [self.view addSubview:surnameTxt];
    
    emailTxt = [[UITextField alloc] initWithFrame:CGRectMake(10, 130, 300, 45)];
    emailTxt.backgroundColor = [UIColor whiteColor];
    emailTxt.placeholder = @"Email";
    [self.view addSubview:emailTxt];
    
    usernameTxt = [[UITextField alloc] initWithFrame:CGRectMake(10, 230, 300, 45)];
    usernameTxt.backgroundColor = [UIColor whiteColor];
    usernameTxt.placeholder = @"Username";
    [self.view addSubview:usernameTxt];
    
    passwordTxt = [[UITextField alloc] initWithFrame:CGRectMake(10, 280, 300, 45)];
    passwordTxt.backgroundColor = [UIColor whiteColor];
    passwordTxt.placeholder = @"Password";
    passwordTxt.secureTextEntry = YES;
    [self.view addSubview:passwordTxt];
    
    registerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    registerButton.frame = CGRectMake(10, 350, 300, 45);
    [registerButton setBackgroundColor:[UIColor lightGrayColor]];
    //registerButton.enabled = NO;
    [registerButton setTitle:@"register" forState:UIControlStateNormal];
    [registerButton addTarget:self action:@selector(registeButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:registerButton];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapHandler:)];
    tapGesture.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:tapGesture];
    
    [self setFBData];
    
    
	// Do any additional setup after loading the view.
}

- (void) setFBData
{
    if([[[UserManager sharedManager] getUser].name isEqualToString:@""])
    {
    }else{
        [nameTxt setText:[[UserManager sharedManager] getUser].name];
    }
    
    if([[[UserManager sharedManager] getUser].surname isEqualToString:@""])
    {
    }else{
        [surnameTxt setText:[[UserManager sharedManager] getUser].surname];
    }
    
    
    if([[[UserManager sharedManager] getUser].email isEqualToString:@""])
    {
    }else{
        [emailTxt setText:[[UserManager sharedManager] getUser].email];
    }
    
    if([[[UserManager sharedManager] getUser].fbUsername isEqualToString:@""])
    {
    }else{
        [usernameTxt setText:[[UserManager sharedManager] getUser].fbUsername];
    }
}

- (void) registeButtonTapped:(id)sender
{
    [self removeKeyboard];
    
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    //MBProgressHUD *hud =
    //[hud setLabelText:@"Registering user..."];
    //check for fields
    [[UserManager sharedManager] getUser].name = nameTxt.text;
    [[UserManager sharedManager] getUser].surname = surnameTxt.text;
    [[UserManager sharedManager] getUser].email = emailTxt.text;
    [[UserManager sharedManager] getUser].username = usernameTxt.text;
    [[UserManager sharedManager] getUser].password = passwordTxt.text;
    
    if ([[UserManager sharedManager] checkFBLink]) {
        [[UserManager sharedManager] updateParseUserInfo];
    }else{
        [[UserManager sharedManager] saveUsertoParse];
    }
    
    [[[UserManager sharedManager] getUser] saveLocal];
}

- (void) receiveNotification:(NSNotification *) notification
{
    if ([[notification name] isEqualToString:kPARSE_REGISTER_SUCCESS])
    {
        [self hideHUD];
        gezimanyaiphoneAppDelegate *appDel = (gezimanyaiphoneAppDelegate *)[UIApplication sharedApplication].delegate;
        [appDel showLoginScreen:2];
    }
    
    if ([[notification name] isEqualToString:kPARSE_REGISTER_FAIL])
    {
        [self hideHUD];
        
        NSDictionary *userInfo = notification.userInfo;
        NSError *error = [userInfo objectForKey:@"error"];
        
        if(error.code == 125){
     //       TTAlertView *alert = [[TTAlertView alloc] initWithTitle:@"Error" message:@"Invalid email address!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
      //      [alert show];
        }
        
        if(error.code == 200){
      //      TTAlertView *alert = [[TTAlertView alloc] initWithTitle:@"Error" message:@"Username missing!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
      //      [alert show];
        }
        
        if(error.code == 202){
    //        TTAlertView *alert = [[TTAlertView alloc] initWithTitle:@"Error" message:@"Username already taken!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
     //       [alert show];
            
            usernameTxt.text = @"";
        }
        
        if(error.code == 203){
      //      TTAlertView *alert = [[TTAlertView alloc] initWithTitle:@"Error" message:@"Email adress already taken!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        //    [alert show];
            
            emailTxt.text = @"";
        }
    }
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

@end
