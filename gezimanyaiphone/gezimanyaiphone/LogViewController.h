//
//  LogViewController.h
//  gezimanyaiphone
//
//  Created by Merve Engur on 28/11/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"



@interface LogViewController : BaseViewController {
    UIButton *fbButton;
    UIButton *nmlButton;
    UIButton *registerBtn;
    UIButton *loginButton;
    
    UITextField *usernameTxt;
    UITextField *passwordTxt;

}

@property (nonatomic, retain) UIButton *fbButton;
@property (nonatomic, retain) UIButton *nmlButton;
@property (nonatomic, retain) UIButton *loginButton;
@property (nonatomic, retain) UIButton *registerBtn;
@property (nonatomic, retain) UITextField *usernameTxt;
@property (nonatomic, retain) UITextField *passwordTxt;



- (void) fbButtonTapped:(id) sender;
- (void) loginButtonTapped:(id) sender;
-(void) registerBtnTapped: (id) sender;

@end
