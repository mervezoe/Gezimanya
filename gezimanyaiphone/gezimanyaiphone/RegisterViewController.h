//
//  RegisterViewController.h
//  gezimanyaiphone
//
//  Created by Merve Engur on 28/11/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"

@interface RegisterViewController : BaseViewController {
    
    UITextField *nameTxt;
    UITextField *surnameTxt;
    UITextField *emailTxt;
    UITextField *usernameTxt;
    UITextField *passwordTxt;
    UIButton *registerButton;
    
}

@property (nonatomic, retain) UITextField *nameTxt;
@property (nonatomic, retain) UITextField *surnameTxt;
@property (nonatomic, retain) UITextField *emailTxt;
@property (nonatomic, retain) UITextField *usernameTxt;
@property (nonatomic, retain) UITextField *passwordTxt;
@property (nonatomic, retain) UIButton *registerButton;

@end
