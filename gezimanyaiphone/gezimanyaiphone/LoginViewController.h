//
//  LoginViewController.h
//  gezimanyaiphone
//
//  Created by Merve Engur on 22/11/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"

@protocol LoginViewDelegate <NSObject>

- (IBAction)loginButtonTouchHandler:(id)sender;

@end

@interface LoginViewController : UIViewController{
    IBOutlet UIButton *loginBtn;
    
    id<LoginViewDelegate> LogDelegate;
    
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

@property (nonatomic, strong) IBOutlet UIActivityIndicatorView *_activityIndicator;
@property (nonatomic, retain) IBOutlet UIButton *loginBtn;

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

@end
