//
//  gezimanyaiphoneAppDelegate.m
//  gezimanyaiphone
//
//  Created by Merve Engur on 20/11/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import "gezimanyaiphoneAppDelegate.h"
#import "VisualStateManager.h"
#import "gezimanyaiphoneViewController.h"
#import <MMDrawerController/MMDrawerController.h>
#import "LeftViewController.h"
#import "RightViewController.h"
#import <Parse/Parse.h>
#import "LogViewController.h"
#import "Config.h"
#import "UserManager.h"
#import "BaseViewController.h"
#import "LocationManager.h"
#import "RegisterViewController.h"
#import "LocationObject.h"
#import "CMLocationObject.h"
@implementation gezimanyaiphoneAppDelegate
@synthesize dataArray, drawerController;

- (void) openMenu
{
    NSLog(@"left menu opened");
    
    UIView *v = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1000, 1000)];
    v.tag = 100;
    v.backgroundColor = [UIColor blackColor];
    v.alpha = .4;
    [self.window.rootViewController.view addSubview:v];
    
    UIButton *vBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    vBtn.frame = v.frame;
    [vBtn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [v addSubview:vBtn];
    
}

- (void) btnClicked:(id)sender
{
    NSLog(@"clicked");
    [[self.window.rootViewController.view viewWithTag:100] removeFromSuperview];
    
}



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    
    [Parse setApplicationId:PARSE_KEY clientKey:PARSE_SECRET];
    [PFFacebookUtils initializeFacebook];
    
    dataArray = [[NSMutableArray alloc] init];
    
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationNone];
    
    [[UIApplication sharedApplication] registerForRemoteNotificationTypes:
     (UIRemoteNotificationTypeBadge | UIRemoteNotificationTypeSound | UIRemoteNotificationTypeAlert)];
    
    
    [application registerForRemoteNotificationTypes:
     UIRemoteNotificationTypeBadge |
     UIRemoteNotificationTypeAlert |
     UIRemoteNotificationTypeSound];

    
    
   // LocationObject *Lobject = [[LocationObject alloc] init];
    
    //±±±±±±±±±±±±±±±±±±±±±±±±
    self.cmLocations = [[NSMutableArray alloc] init];
    
    [NSURLConnection sendAsynchronousRequest:[NSURLRequest requestWithURL:kLOCATION_URL] queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        
        if (!connectionError)
        {
            NSArray *temp = [NSJSONSerialization JSONObjectWithData:data options:nil error:nil];
            for (NSDictionary *d in temp)
            {
                CMLocationObject *cml = [[CMLocationObject alloc] initWithDict:d];
                [cml debugLocation];
                [self.cmLocations addObject:cml];
                
            }
        }
        else
        {
            NSLog(@"connection error");
        }
    }];
    //±±±±±±±±±±±±±±±±±±±±±±±±
    
    
    gezimanyaiphoneViewController *centerViewCont =[[gezimanyaiphoneViewController alloc] init];
    LeftViewController *leftViewCont = [[LeftViewController alloc] init];
    RightViewController *rightViewCont = [[RightViewController alloc]init];
    
    UINavigationController *navigation = [[UINavigationController alloc] initWithRootViewController:centerViewCont];
   
    
    drawerController = [[MMDrawerController alloc] initWithCenterViewController:navigation leftDrawerViewController:leftViewCont rightDrawerViewController:rightViewCont];
    
    leftViewCont.view.backgroundColor = [UIColor darkGrayColor];
    centerViewCont.view.backgroundColor = [UIColor grayColor];
    rightViewCont.view.backgroundColor = [UIColor blueColor];
    
    [drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [drawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    
    [drawerController setMaximumLeftDrawerWidth:200];
    [drawerController setMaximumRightDrawerWidth:200];
    
    [drawerController setDrawerVisualStateBlock:^(MMDrawerController *drawerCnt, MMDrawerSide drawerSide, CGFloat percentVisible) {
        MMDrawerControllerDrawerVisualStateBlock block;
        block = [[VisualStateManager sharedManager]
                 drawerVisualStateBlockForDrawerSide:drawerSide];
        if(block){
            block(drawerCnt, drawerSide, percentVisible);
            [[VisualStateManager sharedManager] setLeftDrawerAnimationType:MMDrawerAnimationTypeParallax];
            [[VisualStateManager sharedManager] setRightDrawerAnimationType:MMDrawerAnimationTypeSwingingDoor];
        }
    
        }];

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window setRootViewController:drawerController];
    [self.window makeKeyAndVisible];
    //  self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[gezimanyaiphoneViewController alloc] init]];
    
    
    if (![[UserManager sharedManager] checkForUserLogin]) {
        [self showLoginScreen:1];
    }else{
        NSLog(@"checkforuserlogin login1, else işlemi");
           centerViewCont = [[gezimanyaiphoneViewController alloc] init];
         navigation = [[UINavigationController alloc] initWithRootViewController:centerViewCont];
          [drawerController setCenterViewController:navigation];
    }
    
    [application registerForRemoteNotificationTypes:UIRemoteNotificationTypeBadge |
     UIRemoteNotificationTypeAlert |
     UIRemoteNotificationTypeSound];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(receiveNotification:)
                                                 name:kPARSE_LOGOUT
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(receiveNotification:)
                                                 name:@"START_APP"
                                               object:nil];

    
    [[LocationManager sharedManager] startLocationLog];
    
    // Override point for customization after application launch.
    return YES;
}

- (void) receiveNotification:(NSNotification *) notification
{
    [self showLoginScreen:1];
    
    BaseViewController * center1;
    if ([notification.name isEqualToString:kPARSE_LOGOUT]) {
        center1 = [[BaseViewController alloc] init];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:center1];
        [drawerController setCenterViewController:nav];
    }else if([notification.name isEqualToString:@"START_APP"]){
        center1 = [[gezimanyaiphoneViewController alloc] init];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:center1];
        [drawerController setCenterViewController:nav];
    }
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    
    [FBSession.activeSession handleDidBecomeActive];
    
    
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    
    [FBSession.activeSession close];
    
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


- (void) removeLoginScreen
{
    NSLog(@"remove login screen");
    LogViewController *logVC = [[LogViewController alloc] init];
    [logVC removeFromParentViewController];
 //   gezimanyaiphoneViewController *center = [[gezimanyaiphoneViewController alloc] init];
  //  UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:center];
  //  [drawerController setCenterViewController:nav];
    
}

- (void)application:(UIApplication*)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData*)deviceToken
{
	NSLog(@"My token is: %@", deviceToken);
    PFInstallation *currentInstallation = [PFInstallation currentInstallation];
    [currentInstallation setDeviceTokenFromData:deviceToken];
    [currentInstallation saveInBackground];
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
    [PFPush handlePush:userInfo];
}

- (void) showLoginScreen:(int)step
{
    
    if (step==1){
    gezimanyaiphoneViewController *center = [[gezimanyaiphoneViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:center];
    [drawerController setCenterViewController:nav];
   
    LogViewController *lg = [[LogViewController alloc] init];
    UINavigationController *loginNav = [[UINavigationController alloc] initWithRootViewController:lg];
    [self.window.rootViewController presentViewController:loginNav animated:NO completion:^{
        NSLog(@"login");
    }];
    }
    if (step==2) {
        gezimanyaiphoneViewController *center = [[gezimanyaiphoneViewController alloc] init];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:center];
        [drawerController setCenterViewController:nav];
        
        RegisterViewController *reg = [[RegisterViewController alloc] init];
        UINavigationController *regNav = [[UINavigationController alloc] initWithRootViewController:reg];
        [self.window.rootViewController presentViewController:regNav animated:NO completion:^{
            NSLog(@"register");
        }];
    }

}

-(void) showRegisterScreen {
    RegisterViewController *reg = [[RegisterViewController alloc] init];
    UINavigationController *regNav = [[UINavigationController alloc] initWithRootViewController:reg];
    [self.window.rootViewController presentViewController:regNav animated:NO completion:^{
        NSLog(@"register");
    }];
}

#pragma mark FACEBOOK FUNCTIONS

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    return [PFFacebookUtils handleOpenURL:url];
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
    return [PFFacebookUtils handleOpenURL:url];
}

-(void)loadData {
    
}

@end
