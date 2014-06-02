//
//  UserManager.m
//  Motty
//
//  Created by Gurkan Tumer on 02/11/13.
//  Copyright (c) 2013 Studio Nord. All rights reserved.
//

#import "UserManager.h"
#import <Parse/Parse.h>
#import "Config.h"
#import "LocationManager.h"
#import "gezimanyaiphoneAppDelegate.h"
#import "User.h"

@implementation UserManager

@synthesize user;
@synthesize letters, name, surname,email,fbID,fbLink,fbUsername,gender,username,objectID;

+ (id)sharedManager
{
    static UserManager *manager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
    });
    return manager;
}


- (id)init {
    if (self = [super init])
    {
      
    
        letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        user = [[User alloc] init];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(saveLocationToParse)
                                                     name:kLOCATION_UPDATE
                                                   object:nil];
    }
    return self;
}

- (void) saveLocationToParse
{
    if ([self checkForUserLogin]) {
        PFObject *locData = [PFObject objectWithClassName:@"UserLocationData"];
        
        NSNumber *latVal = [NSNumber numberWithFloat:[[LocationManager sharedManager] getCurrentLocationLatitude]];
        NSNumber *lngVal = [NSNumber numberWithFloat:[[LocationManager sharedManager] getCurrentLocationLongitude]];
        
        locData[@"latitude"] = latVal;
        locData[@"longitude"] = lngVal;
        [locData setObject:[PFUser currentUser] forKey:@"user"];
        [locData saveInBackground];
    }
}

- (BOOL) checkForUserLogin
{
    BOOL check = NO;
    if ([PFUser currentUser])
    {
        check = YES;
    }
    return check;
}

-(BOOL) checkForUserRegister {
    
    BOOL reg = NO;
    if ([PFUser currentUser]) {
        reg = YES;
    }
    return reg;
    
}

- (void) loginWithName:(NSString *)nm password:(NSString *)ps
{
    [PFUser logInWithUsernameInBackground:nm password:ps
                                    block:^(PFUser *u, NSError *error) {
       if (u) {
           [user setDataFromParse:u];
           gezimanyaiphoneAppDelegate *appDel = (gezimanyaiphoneAppDelegate *)[UIApplication sharedApplication].delegate;
           [appDel showLoginScreen:1];
       } else {
          // The login failed. Check error to see why.
          NSDictionary *userInfo = [NSDictionary dictionaryWithObject:error forKey:@"error"];
          [[NSNotificationCenter defaultCenter] postNotificationName:kPARSE_LOGIN_FAIL object:nil userInfo:userInfo];
       }
    }];
}

- (void) login1
{
    gezimanyaiphoneAppDelegate *appDel = (gezimanyaiphoneAppDelegate *)[UIApplication sharedApplication].delegate;
    [appDel showLoginScreen:1];

}

- (User*) getUser
{
    return user;
}

- (void) logout
{
    [PFUser logOut];
}

- (void) registerWithData:(NSDictionary *)data
{
    NSArray *permissionsArray = @[@"publish_actions", @"email", @"user_location"];
    // Login PFUser using Facebook
    [PFFacebookUtils logInWithPermissions:permissionsArray block:^(PFUser *u, NSError *error) {
        
        if (!u) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"error" message:@"bişi oldu" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
            [alert show];
        }else {
            
            FBRequest *request = [FBRequest requestForMe];
            // Send request to Facebook
            [request startWithCompletionHandler:^(FBRequestConnection *connection, id result, NSError *error) {
                if (!error) {
                    NSDictionary *userData = (NSDictionary *)result;
                    NSLog(@"!error do this");
                    
                    [user setData:userData];
                    
                    gezimanyaiphoneAppDelegate *appDel = (gezimanyaiphoneAppDelegate *) [UIApplication sharedApplication].delegate;
                    //[appD];
                    [appDel removeLoginScreen];
                    //
                }else{
                    NSLog(@"false");
                }
                
            }];
        }
        
 
    }];
    
}

- (BOOL) checkFBLink
{
    PFUser *u = [PFUser currentUser];
    return [PFFacebookUtils isLinkedWithUser:u];
}

- (void) updateParseUserInfo
{
    PFUser *u = [PFUser currentUser];
    u.username = user.username;
    u.password = user.password;
    
    u.email = user.email;
    
    // other fields can be set just like with PFObject
    u[@"gender"] = user.gender;
    u[@"fbID"] = user.fbID;
    u[@"fbLink"] = user.fbLink;
    u[@"fbUsername"] = user.fbUsername;
    u[@"name"] = user.name;
    u[@"surname"] = user.surname;
    
    [u saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            NSLog(@"no error");
            [[NSNotificationCenter defaultCenter] postNotificationName:kPARSE_REGISTER_SUCCESS object:self];
        }else{
            NSDictionary *userInfo = [NSDictionary dictionaryWithObject:error forKey:@"error"];
            [[NSNotificationCenter defaultCenter] postNotificationName:kPARSE_REGISTER_FAIL object:nil userInfo:userInfo];
        }
    }];
}

- (void) saveUsertoParse
{
    PFUser *u = [PFUser currentUser];
    u.username = user.username;
    u.password = user.password;
    
    u.email = user.email;
    
    // other fields can be set just like with PFObject
    u[@"gender"] = user.gender;
    u[@"fbID"] = user.fbID;
    u[@"fbLink"] = user.fbLink;
    u[@"fbUsername"] = user.fbUsername;
    u[@"name"] = user.name;
    u[@"surname"] = user.surname;
    
    [u signUpInBackgroundWithTarget:self
                           selector:@selector(handleSignUp:error:)];
}



- (void) setDataFromParse:(PFUser*)u
{
    NSLog(@"user data : %@", u.objectId);
    name = u[@"name"];
    surname = u[@"surname"];
    fbID = u[@"fbID"];;
    fbUsername = u[@"fbUsername"];
    email = u.email;
    gender = u[@"gender"];
    fbLink = u[@"fbLink"];
    username = u.username;
    objectID = u.objectId;
}

- (void)handleSignUp:(NSNumber *)result error:(NSError *)error {
    
    if (!error) {
        NSLog(@"done");
        [[NSNotificationCenter defaultCenter] postNotificationName:kPARSE_REGISTER_SUCCESS object:self];
    } else {
        NSDictionary *userInfo = [NSDictionary dictionaryWithObject:error forKey:@"error"];
        [[NSNotificationCenter defaultCenter] postNotificationName:kPARSE_REGISTER_FAIL object:nil userInfo:userInfo];
    }
}

#pragma mark GETTER FUNCTIONS



#pragma mark HELPER FUNCTIONS

-(NSString *) generateRandomStringLength: (int) len
{
    
    NSMutableString *randomString = [NSMutableString stringWithCapacity: len];
    
    for (int i=0; i<len; i++) {
        [randomString appendFormat: @"%C", [letters characterAtIndex: arc4random() % [letters length]]];
    }
    
    return randomString;
}

@end
