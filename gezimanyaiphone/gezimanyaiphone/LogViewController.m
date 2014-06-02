//
//  LogViewController.m
//  gezimanyaiphone
//
//  Created by Merve Engur on 28/11/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import "LogViewController.h"
#import "UserManager.h"
#import "Config.h"
#import "gezimanyaiphoneAppDelegate.h"
#import "RegisterViewController.h"

@interface LogViewController ()

@end

@implementation LogViewController

@synthesize fbButton;
@synthesize nmlButton;
@synthesize loginButton;
@synthesize usernameTxt;
@synthesize passwordTxt;
@synthesize registerBtn;


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
    
    self.title = @"Giriş Yap";
    
    [[UserManager sharedManager] logout];
    
    usernameTxt = [[UITextField alloc] initWithFrame:CGRectMake(10, 30, 300, 45)];
    usernameTxt.backgroundColor = [UIColor whiteColor];
    usernameTxt.placeholder = @"Kullanıcı Adı";
   
    if ([[[UserManager sharedManager] getUser].username isEqualToString:@""]) {
        
    }else{
        usernameTxt.text = [[UserManager sharedManager] getUser].username;
    }
    
    [self.view addSubview:usernameTxt];
    
    passwordTxt = [[UITextField alloc] initWithFrame:CGRectMake(10, 80, 300, 45)];
    passwordTxt.backgroundColor = [UIColor whiteColor];
    passwordTxt.placeholder = @"Şifre";
    passwordTxt.secureTextEntry = YES;
  
    if ([[[UserManager sharedManager] getUser].password isEqualToString:@""]) {
        
    }else{
        passwordTxt.text = [[UserManager sharedManager] getUser].password;
    }
   
    [self.view addSubview:passwordTxt];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapHandler:)];
    tapGesture.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:tapGesture];
    
    loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    loginButton.frame = CGRectMake(10, 130, 300, 45);
    [loginButton setBackgroundColor:[UIColor lightGrayColor]];
    [loginButton setTitle:@"Giriş Yap" forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(loginButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginButton];
    
    fbButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    fbButton.frame = CGRectMake(10, 310, 300, 45);
    [fbButton setBackgroundColor:[UIColor lightGrayColor]];
    [fbButton setTitle:@"Facebook ile giriş yap" forState:UIControlStateNormal];
    [fbButton addTarget:self action:@selector(fbButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:fbButton];
 
    registerBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    registerBtn.frame = CGRectMake(10, 360, 300, 45);
    [registerBtn setBackgroundColor:[UIColor lightGrayColor]];
    [registerBtn setTitle:@"Üye Ol" forState:UIControlStateNormal];
    [registerBtn addTarget:self action:@selector(registerBtnTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:registerBtn];
  
	// Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) loginButtonTapped:(id) sender
{
    [self showHUD];
    [self removeKeyboard];
    [[UserManager sharedManager] loginWithName:usernameTxt.text password:passwordTxt.text];
}

- (void) fbButtonTapped:(id) sender
{
    NSLog(@"fb");
    [self showHUD];
    
    [[UserManager sharedManager] registerWithData:nil];
}

- (void) registerBtnTapped:(id)sender
{

    NSLog(@"register btn tapped");
    gezimanyaiphoneAppDelegate *appDel = (gezimanyaiphoneAppDelegate *)[UIApplication sharedApplication].delegate;
    [appDel showLoginScreen:2];

    
   // [self removeVC];
}

- (void) receiveNotification:(NSNotification *) notification
{
    [self hideHUD];
    if ([[notification name] isEqualToString:kPARSE_LOGIN_FAIL])
    {
        NSDictionary *userInfo = notification.userInfo;
        NSError *error = [userInfo objectForKey:@"error"];
        
        if(error.code == 101){
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"INvalid login" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
            
            [alert show];
        //    TTAlertView *alert = [[TTAlertView alloc] initWithTitle:@"Error" message:@"Invalid login!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
         //   [alert show];
        }
    }
}


@end
