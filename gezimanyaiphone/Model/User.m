//
//  User.m
//  Motty
//
//  Created by Gurkan Tumer on 02/11/13.
//  Copyright (c) 2013 Studio Nord. All rights reserved.
//

#import "User.h"
#import <Parse/Parse.h>

@implementation User

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

- (id) init
{
    self = [super init];
    if(self){
        if ([PFUser currentUser])
        {
            PFUser *u = [PFUser currentUser];
            name = u[@"name"];
            surname = u[@"surname"];
            fbID = u[@"fbID"];;
            fbUsername = u[@"fbUsername"];
            email = u.email;
            gender = u[@"gender"];
            fbLink = u[@"fbLink"];
            username = u.username;
            password = u.password;
            objectID = u.objectId;
        }else{
            name = @"";
            surname = @"";
            email = @"";
            fbID = @"";
            fbUsername = @"";
            gender = @"";
            fbLink = @"";
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            username = [defaults objectForKey:@"username"];;
            password = [defaults objectForKey:@"password"];
            objectID = [defaults objectForKey:@"objectID"];
        }
    }
    return self;
}

- (void) setData:(NSDictionary *)uData
{
    fbData = [[NSDictionary alloc] initWithDictionary:uData];
    
    name = [fbData objectForKey:@"first_name"];
    surname = [fbData objectForKey:@"last_name"];
    fbID = [fbData objectForKey:@"id"];
    fbUsername = [fbData objectForKey:@"username"];
    email = [fbData objectForKey:@"email"];
    gender = [fbData objectForKey:@"gender"];
    fbLink = [fbData objectForKey:@"link"];
    
    PFInstallation *currentInstallation = [PFInstallation currentInstallation];
    [currentInstallation setObject:[PFUser currentUser] forKey:@"user"];
    [currentInstallation saveEventually];
}

- (void) setDataFromParse:(PFUser*)u
{
    name = u[@"name"];
    surname = u[@"surname"];
    fbID = u[@"fbID"];;
    fbUsername = u[@"fbUsername"];
    email = u.email;
    gender = u[@"gender"];
    fbLink = u[@"fbLink"];
    username = u.username;
    password = u.password;
    objectID = u.objectId;
}

- (void) saveLocal
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:username forKey:@"username"];
    [defaults setObject:password forKey:@"password"];
    [defaults setObject:objectID forKey:@"objectID"];
    [defaults synchronize];
    NSLog(@"Data saved");
}

@end
