//
//  User.h
//  Motty
//
//  Created by Gurkan Tumer on 02/11/13.
//  Copyright (c) 2013 Studio Nord. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface User : NSObject
{
    NSString *name;
    NSString *surname;
    NSString *email;
    NSString *fbID;
    NSString *fbUsername;
    NSString *gender;
    NSString *fbLink;
    NSString *username;
    NSString *password;
    NSString *objectID;
    
    NSDictionary *fbData;
}

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *surname;
@property (nonatomic, retain) NSString *email;
@property (nonatomic, retain) NSDictionary *fbData;
@property (nonatomic, retain) NSString *fbID;
@property (nonatomic, retain) NSString *fbUsername;
@property (nonatomic, retain) NSString *gender;
@property (nonatomic, retain) NSString *fbLink;
@property (nonatomic, retain) NSString *username;
@property (nonatomic, retain) NSString *password;
@property (nonatomic, retain) NSString *objectID;

- (void) setData:(NSDictionary *)uData;
- (void) setDataFromParse:(PFUser*)u;
- (void) saveLocal;

@end
