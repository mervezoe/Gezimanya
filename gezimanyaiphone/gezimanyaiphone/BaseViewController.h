//
//  BaseViewController.h
//  gezimanyaiphone
//
//  Created by Merve Engur on 25/11/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MMDrawerBarButtonItem;

@interface BaseViewController : UIViewController <UITextFieldDelegate>
{
    
    MMDrawerBarButtonItem *leftBtn;
    MMDrawerBarButtonItem *rightBtn;
    BaseViewController *base;
}

- (void) removeVC;

- (void) showHUD;
- (void) hideHUD;
- (void) removeKeyboard;
- (void) tapHandler:(UIGestureRecognizer*)gesture;


-(void) addLeftMenuBtn;
-(void) addRightMenuBtn;


@end
