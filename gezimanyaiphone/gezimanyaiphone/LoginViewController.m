//
//  LoginViewController.m
//  gezimanyaiphone
//
//  Created by Merve Engur on 22/11/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import "LoginViewController.h"
#import <Parse/Parse.h>
#import "gezimanyaiphoneViewController.h"
#import "UserManager.h"
//#import "User.h"


@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize _activityIndicator;
@synthesize loginBtn;
@synthesize name;
@synthesize surname;
@synthesize email;
@synthesize fbData;
@synthesize fbID;
@synthesize fbUsername;
@synthesize gender;
@synthesize fbLink;
@synthesize username;
@synthesize password;
@synthesize objectID;

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
    
    self.title = @"Login";
    
    [[UserManager sharedManager] logout];
    
    usernameTxt = [[UITextField alloc] initWithFrame:CGRectMake(10, 30, 300, 45)];
    usernameTxt.backgroundColor = [UIColor whiteColor];
    usernameTxt.placeholder = @"Username";
    
    loginBtn = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 100, 70)];
    [loginBtn addTarget:self action:@selector(loginButtonTouchHandler:) forControlEvents:UIControlEventTouchUpInside];

    loginBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    loginBtn.backgroundColor = [UIColor redColor];

    [self.view addSubview:loginBtn];
    
    // Check if user is cached and linked to Facebook, if so, bypass login
    if ([PFUser currentUser] && [PFFacebookUtils isLinkedWithUser:[PFUser currentUser]]) {
        [self.navigationController pushViewController:[gezimanyaiphoneViewController alloc] animated:YES];
	}
}
- (IBAction)loginButtonTouchHandler:(id)sender  {
    // Set permissions required from the facebook user account
    NSArray *permissionsArray = @[ @"user_about_me", @"publish_actions", @"user_birthday", @"user_location"];
    
    // Login PFUser using facebook
    [PFFacebookUtils logInWithPermissions:permissionsArray block:^(PFUser *user, NSError *error) {
        [_activityIndicator stopAnimating]; // Hide loading indicator
        
        if (!user) {
            if (!error) {
                NSLog(@"Uh oh. The user cancelled the Facebook login.");
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Log In Error" message:@"Uh oh. The user cancelled the Facebook login." delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Dismiss", nil];
                [alert show];
            } else {
                NSLog(@"Uh oh. An error occurred: %@", error);
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Log In Error" message:[error description] delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Dismiss", nil];
                [alert show];
            }
        } else {
            FBRequest *request = [FBRequest requestForMe];
            
                [[UserManager sharedManager] registerWithData:nil];
            
            [request startWithCompletionHandler:^(FBRequestConnection *connection, id result, NSError *error) {
                if (!error) {
                    NSDictionary *userData = (NSDictionary *)result;
                    
                    
                  //  MottyAppDelegate *appDel = (MottyAppDelegate *)[UIApplication sharedApplication].delegate;
                  //  [appDel showLoginScreen:2];
                    
                }
            }];

        }
        
            
            if (user.isNew) {
            NSLog(@"User with facebook signed up and logged in!");
            [self.navigationController pushViewController:[gezimanyaiphoneViewController alloc] animated:YES];
        } else {
            NSLog(@"User with facebook logged in!");
            [self.navigationController pushViewController:[gezimanyaiphoneViewController alloc] animated:YES];
        }
    }];
    
    
    [_activityIndicator startAnimating]; // Show loading indicator until login is finished
}



-(void) updateParseInfo {
    PFUser *user = [PFUser currentUser];
    user.username = user.username;
    user.password = user.password;
    user.email = user.email;
    
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view resignFirstResponder];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
