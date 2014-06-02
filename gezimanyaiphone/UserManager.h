//
//  UserManager.h
//  Motty
//
//  Created by Gurkan Tumer on 02/11/13.
//  Copyright (c) 2013 Studio Nord. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>
#import "User.h"

@interface UserManager : NSObject
{
    User *user;
    NSString *letters;
    
    NSString *name;
    NSString *surname;
    NSString *email;
    NSString *fbID;
    NSString *fbUsername;
    NSString *gender;
    NSString *fbLink;
    NSString *username;
    NSString *objectID;
}

@property (nonatomic, retain) User *user;
@property (nonatomic, retain) NSString *letters;

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *surname;
@property (nonatomic, retain) NSString *email;
@property (nonatomic, retain) NSString *fbID;
@property (nonatomic, retain) NSString *fbUsername;
@property (nonatomic, retain) NSString *gender;
@property (nonatomic, retain) NSString *fbLink;
@property (nonatomic, retain) NSString *username;
@property (nonatomic, retain) NSString *objectID;

+ (id)sharedManager;

- (void) setDataFromParse:(PFUser*)u;


- (BOOL) checkForUserLogin;

- (void) loginWithName:(NSString *)nm password:(NSString *)ps;
- (void) login1;
- (void) logout;
- (void) registerWithData:(NSDictionary *)data;
- (void) saveUsertoParse;
- (void) updateParseUserInfo;
- (User*) getUser;
- (BOOL) checkFBLink;
- (NSString *) generateRandomStringLength: (int) len;

@end
